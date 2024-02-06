package com.office.youdog.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.office.youdog.admin.event.AdminEventService;
import com.office.youdog.event.EventVo;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	@Autowired
	AdminEventService adminEventService;
	
	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String home() {
		System.out.println("[AdminHomeController] home()");

		String nextPage = "/admin/home";

		return nextPage;
	}
	
	
	@GetMapping("about")
	public String about() {
		String nextPage = "/admin/include/about";
		return nextPage;
	}
	
	
	@GetMapping("/contact")
	public String contact() {
		String nextPage = "/admin/include/contact";
		return nextPage;
	}

	@GetMapping("/404")
	public String error404() {
		String nextPage = "/admin/include/404";
		return nextPage;
	}

	@GetMapping("/wishlist")
	public String wishlist() {
		String nextPage = "/admin/include/wishlist";
		return nextPage;
	}
	
	
	
}
