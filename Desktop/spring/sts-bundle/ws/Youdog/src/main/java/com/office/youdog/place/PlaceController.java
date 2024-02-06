package com.office.youdog.place;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.office.youdog.user.member.UserMemberController;
import com.office.youdog.user.member.UserMemberVo;


@Controller
@RequestMapping("/place")
public class PlaceController {
	private static final Logger logger = LoggerFactory.getLogger(PlaceController.class);

	@Autowired
	PlaceService placeService;
	
	// 1. 좋아요를 누를 때 로그인이 되어있는지 검사하기 위해서 세션에서 유저의 정보를 가져옴
	private UserMemberVo getLogined(HttpSession session) {
		UserMemberVo loginedUserMemberVo 
		=  (UserMemberVo) session.getAttribute("loginedUserMemberVo");
		return loginedUserMemberVo; 
	}
	
	// 장소 페이지 데이터 가져오기
	@GetMapping(value = { "", "/" })
	public String Place(Model model, HttpSession session)  {
		// 1. PlaceVo의 정보를 모두 가져옴
		// 2. 로그인 된 유저의 아이를 보내서, 그 아이디가 좋아하는 장소를 리스트로 가져옴
		List<PlaceVo> lists = placeService.listupPlace();
		/* List<Integer> placeLists = placeService.ListupPlaceNo(); */
		model.addAttribute("placeVos", lists);
		
		
		/*
		 * UserMemberVo loginedUserMemberVo = getLogined(session); // 로그인이 되어있다면
		 * if(loginedUserMemberVo!=null) { // 로그인이 된 user_no를 받아옴 int user_no =
		 * loginedUserMemberVo.getUser_no(); String likeLists =
		 * placeService.LikeListupPlace(user_no);
		 * 
		 * 
		 * List<Integer> likeNoLists = Arrays.stream(likeLists.split(","))
		 * .map(Integer::parseInt) .collect(Collectors.toList());
		 * 
		 * model.addAttribute("likeNoLists", likeNoLists); }
		 */
		UserMemberVo loginedUserMemberVo = getLogined(session);
		if(loginedUserMemberVo != null) {
		    int user_no = loginedUserMemberVo.getUser_no();
		    String likeLists = "";
		    likeLists = placeService.LikeListupPlace(user_no);

		    if (likeLists != null) {
		        List<Integer> likeNoLists = Arrays.stream(likeLists.split(","))
		                .map(Integer::parseInt)
		                .collect(Collectors.toList());

		        model.addAttribute("likeNoLists", likeNoLists);
		    } else {
		    	List<Integer> likeNoLists = List.of(0);
		    	model.addAttribute("likeNoLists", likeNoLists);
		    }
		} else {
			List<Integer> likeNoLists = List.of(0);
	    	model.addAttribute("likeNoLists", likeNoLists);
		}
		String nextPage = "include/place";
		
		return nextPage;

	}

	
	// 좋아요 수 증가
	@PostMapping("/placegood")
	public String placeLikes(HttpSession session, 
			@RequestParam("place_no") int place_no) {
		logger.info("placeLikes");

		String nextPage = "redirect:/place";

		// 만약 세션에 유저의 정보가 없으면 로그인 페이지로 넘어감
		if(getLogined(session)==null)
			nextPage = "redirect:/user/member/loginForm";
		else{

		// 로그인이 되어있다면 user_no를 받아옴
			int user_no = getLogined(session).getUser_no();
		// 로그인이 되어있다면 좋아요 수를 증가시킴
			placeService.placeLikes(place_no);
		// 로그인이 되어 있다면 user_no를 넘겨서 wishplace에 저장함
			placeService.insertWishPlace(user_no, place_no);
		}
		
		
		return nextPage;
	}
	
	
	
	//좋아요 수 감소
	@PostMapping("/placebed")
	public String placeHates(HttpSession session, 
			@RequestParam("place_no") int place_no) {
		logger.info("placeHates");

		String nextPage = "redirect:/place";

		// 만약 세션에 유저의 정보가 없으면 로그인 페이지로 넘어감
		if(getLogined(session)==null)
			nextPage = "redirect:/user/member/loginForm";
		else{

		// 로그인이 되어있다면 user_no를 받아옴
			int user_no = getLogined(session).getUser_no();
		// 로그인이 되어있다면 좋아요 수를 증가시킴
			placeService.placeHates(place_no);
		// 로그인이 되어 있다면 user_no를 넘겨서 wishPlace에서 삭제함
			placeService.deleteWishPlace(user_no, place_no);
		}
		
		
		return nextPage;
	}
	
	
	
	
}
