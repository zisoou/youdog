package com.office.youdog.bulletin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.office.youdog.admin.member.AdminMemberVo;
import com.office.youdog.user.member.UserMemberVo;


@Controller
@RequestMapping("/bulletin")
public class BulletinController {
	private static final org.slf4j.Logger logger 
		= LoggerFactory.getLogger(BulletinController.class);

	@Autowired
	BulletinService bulletinService;
	
	// 게시글 조회
	@GetMapping(value = { "", "/" })
	public String bulletin(Model model) {
		String nextPage = "include/bulletin";
		List<BulletinVo> lists = bulletinService.listupAllBulletin();
		/* List<Integer> placeLists = placeService.ListupPlaceNo(); */
		model.addAttribute("BulletinVos", lists);

		return nextPage;
	}

	// 디테일 페이지 조회
	@GetMapping("/detailPage")
	public String detailPage(@RequestParam("b_no") int b_no, Model model) {
		// 조회 시 조회수 증가하는 쿼리
		bulletinService.increaseVeiws(b_no);

		// 클릭한 게시판 번호에 해당하는 디테일 페이지 정보를 객체 형태로 불러옴
		BulletinVo bulletinVo = bulletinService.detailBulletin(b_no);
		model.addAttribute("bulletinVo", bulletinVo);

		String nextPage = "user/bulletin/bulletin_detail";
		return nextPage;
	}

	@GetMapping("/writePage")
	public String writePage(HttpSession session) {
		String nextPage = "user/bulletin/bulletin_write";
		UserMemberVo loginedUserMemberVo = getLogined(session);
		if (loginedUserMemberVo == null) {
			nextPage = "redirect:/user/member/loginForm";
		}
		return nextPage;
	}

	// 1. 세션에서 유저의 정보를 가져오는 함수
	private UserMemberVo getLogined(HttpSession session) {
		UserMemberVo loginedUserMemberVo = (UserMemberVo) session.getAttribute("loginedUserMemberVo");
		return loginedUserMemberVo;
	}

	// 게시글 등록
	@PostMapping(value = "bulletinWrite")
	public String bulletinWrite(BulletinVo bulletinVo, HttpSession session) {
		String nextPage = "redirect:/bulletin";

		UserMemberVo loginedUserMemberVo = getLogined(session);

		if (loginedUserMemberVo == null) {
			nextPage = "redirect:/user/member/loginForm";
		} else {
			String bulletin_writer = loginedUserMemberVo.getUser_name();
			bulletinVo.setBulletin_writer(bulletin_writer);
			int bulletin_writer_no = loginedUserMemberVo.getUser_no();

			bulletinVo.setBulletin_writer_no(bulletin_writer_no);
			int result = bulletinService.bulletinWrite(bulletinVo);

			if (result <= 0)
				nextPage = "user/bulletin/bulletin_write_ng";

		}

		return nextPage;
	}

	// 게시글 수정 기능
	@GetMapping("modifyBulletin")
	public String modifyBulletin(@RequestParam("b_no") int b_no, Model model, HttpSession session) {
		logger.info("modifyBulletin");
		String nextPage = "/user/bulletin/bulletin_modify";
		
		BulletinVo bulletinVo = bulletinService.detailBulletin(b_no);
		model.addAttribute("bulletinVo", bulletinVo);
		
		
		UserMemberVo loginedUserMemberVo = getLogined(session);
		if (loginedUserMemberVo == null) {
			nextPage = "redirect:/user/member/loginForm";
		}
		return nextPage;
	}

	@PostMapping("modifyBulletinConfirm")
	public String modifyBulletinConfirm( BulletinVo bulletinVo) {
		logger.info("modifyBulletinConfirm");
		int result = bulletinService.modifyBulletinConfirm(bulletinVo);
		if(result <=0) {
			String nextPage = "user/bulletin/bulletin_write_ng";
			return nextPage;
		}
		
		return "redirect:/bulletin";
	}
	
	@GetMapping("deleteBulletin")
	public String deleteBulletin(@RequestParam("b_no") int b_no, HttpSession session) {
		logger.info("deleteBulletin");
		String nextPage = "redirect:/bulletin";
		
		bulletinService.deleteBulletin(b_no);
		
		
		UserMemberVo loginedUserMemberVo = getLogined(session);
		if (loginedUserMemberVo == null) {
			nextPage = "redirect:/user/member/loginForm";
		}
		
		return nextPage;
	}

	/*
	 * // 좋아요 수 증가
	 * 
	 * @PostMapping("/bulletinLikes") public String bulletinLikes(HttpSession
	 * session,
	 * 
	 * @RequestParam("place_no") int place_no) {
	 * 
	 * String nextPage = "redirect:/bulletin";
	 * 
	 * // 만약 세션에 유저의 정보가 없으면 로그인 페이지로 넘어감 if(getLogined(session)==null) nextPage =
	 * "redirect:/user/member/loginForm"; else{
	 * 
	 * // 로그인이 되어있다면 user_no를 받아옴 int user_no = getLogined(session).getUsre_no();
	 * // 로그인이 되어있다면 좋아요 수를 증가시킴 bulletinService.bulletinLikes(place_no); //
	 * 로그인이 되어 있다면 user_no를 넘겨서 wishplace에 저장함
	 * bulletinService.insertWishPlace(user_no, place_no); }
	 * 
	 * 
	 * return nextPage; }
	 */
}
