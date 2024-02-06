package com.office.youdog.admin.place;

import java.util.Arrays;
import java.util.List;
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
import org.springframework.web.multipart.MultipartFile;


import com.office.youdog.UploadFileService;
import com.office.youdog.admin.member.AdminMemberVo;
import com.office.youdog.place.HopePlaceVo;
import com.office.youdog.place.PlaceVo;
import com.office.youdog.user.member.UserMemberVo;

@Controller
@RequestMapping("/admin/place")
public class AdminPlaceController {
	private static final Logger logger = LoggerFactory.getLogger(AdminPlaceController.class);

	@Autowired
	AdminPlaceService adminPlaceService;

	@Autowired
	UploadFileService uploadFileService;

	// 장소등록 폼 화면
	@GetMapping("/registerPlaceForm")
	public String registerPlaceForm(Model model) {
		model.addAttribute("PlaceVo", new PlaceVo());
		return "/admin/place/register_place_form";
	}

	// 장소등록 프로세스
		@PostMapping("/registerPlaceConfirm")
		public String registerPlaceConfirm(PlaceVo placeVo, 
				@RequestParam("file") MultipartFile file,
				@RequestParam(name = "hoplace_no") String hoplace_no) {
			String nextPage = "redirect:/admin/place";
			// SAVE FILE
			String savedFileName = uploadFileService.upload(file);
			
			// ispn은 우편번호
			if (savedFileName != null) {
				placeVo.setPlace_thumbnail(savedFileName);
				int result = adminPlaceService.registerPlaceConfirm(placeVo);

				if (result <= 0)
					nextPage = "admin/place/register_place_ng";
			} else {
				nextPage = "admin/place/register_place_ng";
			}

			// 입고요청장소 업데이트
			try {
				int hoplace_no_int = Integer.valueOf(hoplace_no);
				if(hoplace_no_int >0) {
					int result = adminPlaceService.updateRegister(hoplace_no_int);	
					if(result <= 0)
						nextPage = "admin/place/register_place_ng";	
				}
			} catch (NumberFormatException e) {}

			return nextPage;
		}
		
		// 희망 장소 요청
		@GetMapping("/requestHopePlaceForm")
		public String requestHopePlaceForm() {
			return "/admin/place/request_hope_place_form";
		}


	
		// 희망 장소 등록 
		@PostMapping("/requestHopePlaceConfirm")
		public String requestHopePlaceConfirm(HttpSession session, HopePlaceVo hopePlaceVo,
		@RequestParam ("file") MultipartFile file)		 
		{	
			String nextPage = "/admin/place/request_hope_place_ok";
			// SAVE FILE
			String savedFileName = uploadFileService.upload(file);
			int admin_no = ((AdminMemberVo)session.getAttribute("loginedAdminMemberVo")).getAdmin_no();
			hopePlaceVo.setAdmin_no(admin_no);
			
			if (savedFileName != null) {
				hopePlaceVo.setHoplace_thumbnail(savedFileName)	;
				int result = adminPlaceService.requestHopePlaceConfirm(hopePlaceVo);

				if(result <= 0)
					nextPage = "/admin/place/request_hope_place_ng";	
			}else {
				nextPage = "/admin/place/request_hope_place_ng";
			}
			
			return nextPage;
		}	
	
		
		//슈퍼관리자의 관리자 승인 요청 페이지
		//관리자 목록 조회
			@GetMapping("/listupHopePlace")
			public String listupHopePlace(Model model) {
				logger.info("listupHopePlace");
				String nextPage = "/admin/place/listup_hope_places";
				List<HopePlaceVo> lists = adminPlaceService.listupHopePlace();
				model.addAttribute("hopePlaceVos",lists );
				return nextPage;
			}

			// 장소 등록 승인
			@GetMapping("/setPlaceApproval")
			public String setPlaceApproval(@RequestParam("hoplace_no") int hoplace_no) {
				logger.info("setPlaceApproval");
				String nextPage = "redirect:/admin/place/listupHopePlace";
				adminPlaceService.setPlaceApproval(hoplace_no);
				return nextPage;
			}
		
			// 장소 등록 승인 철회
			@GetMapping("/setPlaceDenial")
			public String setPlaceDenial(@RequestParam("hoplace_no") int hoplace_no ) {
				logger.info("setPlaceDenial");
				String nextPage = "redirect:/admin/place/listupHopePlace";
				adminPlaceService.setPlaceDenial(hoplace_no);
				return nextPage;
			}
			
			// 장소 페이지 데이터 가져오기
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

			
			
				
			
}