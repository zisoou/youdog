package com.office.youdog.event;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.office.youdog.HomeController;
import com.office.youdog.user.member.UserMemberVo;

@Controller
@RequestMapping("/event")
public class UserEventController {
	private static final Logger logger = LoggerFactory.getLogger(UserEventController.class);
	
	@Autowired
	UserEventService eventService;
	
	// 1. 좋아요를 누를 때 로그인이 되어있는지 검사하기 위해서 세션에서 유저의 정보를 가져옴
	private UserMemberVo getLogined(HttpSession session) {
		UserMemberVo loginedUserMemberVo 
		=  (UserMemberVo) session.getAttribute("loginedUserMemberVo");
		return loginedUserMemberVo; 
	}
	
	@GetMapping({"","/"})
	public String event(Model model, HttpSession session) {
		EventVo eventVo = new EventVo();
		
		// 이벤트 리스트 불러오기
		int eventListTotal = eventService.selectEventListTotal();
		
		eventVo.setStartRow(1);
		eventVo.setEndRow(4);
		List<EventVo> eventList1row = eventService.selectEventList(eventVo);
		model.addAttribute("eventList1row", eventList1row);
		if (eventListTotal > 4) {
			eventVo.setStartRow(5);
			eventVo.setEndRow(8);
			List<EventVo> eventList2row = eventService.selectEventList(eventVo);
			model.addAttribute("eventList2row", eventList2row);
		}
		if (eventListTotal > 8) {
			eventVo.setStartRow(9);
			eventVo.setEndRow(12);
			List<EventVo> eventList3row = eventService.selectEventList(eventVo);
			model.addAttribute("eventList3row", eventList3row);
		}
		
		String nextpage = "/include/event";

		return nextpage;
	}
}
