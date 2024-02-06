package com.office.youdog;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		String nextPage = "/home";
		
		return nextPage;
	}
	
	
	@GetMapping("/about")
	public String about() {
		String nextPage = "/include/about";
		return nextPage;
	}
	
//	@GetMapping("/event")
//	public String team() {
//		String nextPage = "/include/event";
//		return nextPage;
//	}
	
	/*
	 * @GetMapping("/bulletin") public String board() { String nextPage =
	 * "/include/bulletin"; return nextPage; }
	 */
	
	@GetMapping("/contact")
	public String contact() {
		String nextPage = "/include/contact";
		return nextPage;
	}

	@GetMapping("/404")
	public String error404() {
		String nextPage = "/include/404";
		return nextPage;
	}

	@GetMapping("/wishlist")
	public String wishlist() {
		String nextPage = "/include/wishlist";
		return nextPage;
	}
}
