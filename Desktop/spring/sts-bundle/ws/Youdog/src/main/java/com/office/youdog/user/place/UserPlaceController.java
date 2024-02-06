package com.office.youdog.user.place;

import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;

import com.office.youdog.UploadFileService;
import com.office.youdog.admin.member.AdminMemberVo;
import com.office.youdog.place.HopePlaceVo;
import com.office.youdog.place.PlaceVo;
import com.office.youdog.place.WishPlaceVo;
import com.office.youdog.user.member.UserMemberVo;

@Controller
@RequestMapping("/user/place")
public class UserPlaceController {
	private static final Logger logger = LoggerFactory.getLogger(UserPlaceController.class);

	@Autowired
	UserPlaceService userPlaceService;

	
	 private UserMemberVo getLogined(HttpSession session) {
	      UserMemberVo loginedUserMemberVo 
	      =  (UserMemberVo) session.getAttribute("loginedUserMemberVo");
	      return loginedUserMemberVo; 
	   }

	            
	// 찜 목록
	@GetMapping("/listupWishList")
	public String listupWishList(Model model, HttpSession session) {
		String nextPage = "/user/place/wishlist";
		try {
			int user_no = getLogined(session).getUser_no();
			List<WishPlaceVo> lists = userPlaceService.listupWishPlace(user_no);
			model.addAttribute("wishPlaceVos", lists);
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/";
		}		
		return nextPage;
	}

	// 찜 목록 삭제
	@GetMapping("/deleteUserWishPlace")
	public String deleteUserWishPlace(@RequestParam("wplace_no") int wplace_no) {
		String nextPage = "/user/place/listupWishList";
		
		int place_no = userPlaceService.selectPlaceNoByWplaceNo(wplace_no);
		
		int result = userPlaceService.deleteUserWishPlace(wplace_no);
		if(result <= 0) {
		    nextPage = "/user/place/delete_wish_place_ng";
		    return nextPage;
		}else {
		    userPlaceService.minusPlaceLikes(place_no);
		}

		return "redirect:/user/place/listupWishList";
	}
	
	/*// 장소 페이지 데이터 가져오기
	@GetMapping(value = { "", "/" })
	public String Place(Model model)  {
		// 1. PlaceVo의 정보를 모두 가져옴
		// 2. 로그인 된 유저의 아이를 보내서, 그 아이디가 좋아하는 장소를 리스트로 가져옴
		logger.info("listupAdmin");
		List<PlaceVo> lists = adminPlaceService.listupPlace();
		model.addAttribute("placeVos", lists);	
		String nextPage = "/admin/include/place";
		
		return nextPage;
	}
-- 찜목록에서 링크 타고 가기*/

}