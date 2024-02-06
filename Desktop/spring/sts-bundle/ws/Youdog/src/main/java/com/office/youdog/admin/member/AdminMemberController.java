package com.office.youdog.admin.member;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
@RequestMapping("admin/member")
public class AdminMemberController {
	private static final Logger logger 
	= LoggerFactory.getLogger(AdminMemberController.class);

	@Autowired
	private AdminMemberService adminMemberService;

	//회원가입 신청 폼
	@GetMapping(value = "createAccountForm")
	public String createAccountForm() {	
		logger.info("createAccountForm");

		String nextPage = "/admin/member/create_account_form";
		return nextPage;
	}

	// 회원가입 신청 제출
	@PostMapping(value="createAccountConfirm")
	public String createAccountConfirm(AdminMemberVo adminMemberVo) {
		logger.info("createAccountConfirm");

		AdminMemberVo vo = adminMemberService.selectById(adminMemberVo.getAdmin_id());
		String nextPage =  "";
		if(vo == null) {
			int result = adminMemberService.createAccountConfirm(adminMemberVo);		
			if(result <= 0)
				nextPage= "/admin/member/create_account_ng";
		}
		else
			nextPage= "/admin/member/create_account_ng";
		return "redirect:/admin/member/loginForm";
	}
	
	
	// 관리자 로그인 요청
	@GetMapping("/loginForm")
	public String loginForm() {
		logger.info("loginForm");
		String nextPage = "/admin/member/login_form";
		return nextPage;
	}
	
	
	// 관리자 로그인 처리
	@PostMapping("/loginForm")
	public String loginForm(AdminMemberVo adminMemberVo, HttpSession session) {
		logger.info("loginForm");
		String nextPage = "redirect:/admin";
		AdminMemberVo loginedAdminMemberVo = 
				adminMemberService.loginConfirm(adminMemberVo);
		if(loginedAdminMemberVo == null)
			nextPage = "/admin/member/login_ng";
		else {
			session.setAttribute("loginedAdminMemberVo", loginedAdminMemberVo);
			session.setMaxInactiveInterval(60*30); //30분 셋팅
		}
		return nextPage;
	}
	
	// 관리자 로그아웃
	@GetMapping("/logoutConfirm")
	public String logoutConfirm(HttpSession session) {
		logger.info("logoutConfirm");
		session.invalidate();
		String nextPage = "redirect:/admin";
		return nextPage;
	}
	// 관리자 목록 조회 생략
	// 관리자 목록 승인 생략
	
	
	//계정정보 수정 화면 로드
	@GetMapping("/modifyAccountForm")
	public String modifyAccountForm(HttpSession session) {
		logger.info("modifyAccountForm");
		String nextPage = "/admin/member/modify_account_form";
		// 로그인여부를 체크하기 위해서 세션정보를 가져오고(로그인했을때는 해당이름으로 세션정보를 생성)
		AdminMemberVo loginedAdminMemberVo 
		=  (AdminMemberVo) session.getAttribute("loginedAdminMemberVo");
		if(loginedAdminMemberVo == null)
			nextPage = "redirect:/admin/member/login_form";
		return nextPage;
	}
	// 계정정보 수정
	@PostMapping("/modifyAccountConfirm")
	public String modifyAccountConfirm(AdminMemberVo adminMemberVo, HttpSession session) {
		logger.info("modifyAccountConfirm : " + adminMemberVo);
		String nextPage = "/admin/member/modify_account_ok";		
		try {
			adminMemberService.modifyAccountConfirm(adminMemberVo);
			session.setAttribute("loginedAdminMemberVo", adminMemberVo);		
		}catch (Exception e) {
			e.printStackTrace();
			nextPage = "/admin/member/modify_account_ng";
		}		
		return nextPage;
	}
	
	
	//슈퍼관리자의 관리자 승인 요청 페이지
	//관리자 목록 조회
		@GetMapping("/listupAdmin")
		public String listupAdmin(Model model) {
			logger.info("listupAdmin");
			List<AdminMemberVo> lists = adminMemberService.listupAdmin();
			model.addAttribute("adminMemberVos",lists );
			String nextPage = "/admin/member/listup_admins";
			return nextPage;
		}
		
		// 관리자 목록 승인
		// setAdminApproval?admin_no=6
		@GetMapping("/setAdminApproval")
		public String setAdminApproval(@RequestParam("admin_no") int admin_no ) {
			logger.info("setAdminApproval");
			String nextPage = "redirect:/admin/member/listupAdmin";
			adminMemberService.setAdminApproval(admin_no);
			return nextPage;
		}
	
		// 관리자 목록 승인 철회
		// setAdminApproval?admin_no=6
		@GetMapping("/setAdminDenial")
		public String setAdminDenial(@RequestParam("admin_no") int admin_no ) {
			logger.info("setAdminDenial");
			String nextPage = "redirect:/admin/member/listupAdmin";
			adminMemberService.setAdminDenial(admin_no);
			return nextPage;
		}
		

}
