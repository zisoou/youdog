package com.office.youdog.admin.event;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.office.youdog.UploadFileService;
import com.office.youdog.admin.bulletin.AdminBulletinService;
import com.office.youdog.admin.member.AdminMemberVo;
import com.office.youdog.bulletin.BulletinVo;
import com.office.youdog.event.EventVo;
import com.office.youdog.place.HopePlaceVo;
import com.office.youdog.place.PlaceVo;

@Controller
@RequestMapping("/admin/event")
public class AdminEventController {

	@Autowired
	AdminEventService adminEventService;
	@Autowired
	UploadFileService uploadFileService;

	
	@GetMapping({"","/"})
	public String event(Model model, HttpSession session) {
		List<EventVo> eventList = adminEventService.selectEventList();
		model.addAttribute("eventList", eventList);
		
		String nextPage = "/admin/include/event";
		return nextPage;
	}

	// 이벤트 등록 폼
	@GetMapping("/eventWriteForm")
	public String eventWriteForm(Model model) {
		model.addAttribute("EventVo", new EventVo());
		return "/admin/event/event_write_form";
	}

	// 이벤트 등록
	@PostMapping("/eventWriteConfirm")
	public String eventWriteConfirm(EventVo eventVo, @RequestParam("file") MultipartFile file) {
		String nextPage = "";
		// 이미지 파일 업로드
		String savedFileName = uploadFileService.upload(file);

		if (savedFileName != null) {
			eventVo.setEvent_thumbnail(savedFileName);
			int result = adminEventService.eventWriteConfirm(eventVo);

			if (result <= 0) {
				nextPage = "admin/event/event_write_ng";
				return nextPage;
			}
		} else {
			nextPage = "admin/event/event_write_ng";
			return nextPage;
		}
		return "redirect:/admin/event";

	}
	// 이벤트 수정 폼
	@GetMapping("/modifyEventForm")
	public String modifyEventForm(Model model, @RequestParam("event_no") int event_no) {
		EventVo eventVo = new EventVo();
		eventVo = adminEventService.selectEventByNo(event_no);
		model.addAttribute("EventVo", eventVo);
		return "/admin/event/event_modify_form";
	}
	
	// 이벤트 등록
		@PostMapping("/modifyEventConfirm")
		public String eventModifyConfirm(EventVo eventVo, @RequestParam("file") MultipartFile file) {
			String nextPage = "";
			// 이미지 파일 업로드
			if ("".equals(file)) {
				String savedFileName = uploadFileService.upload(file);

				if (savedFileName != null) {
					eventVo.setEvent_thumbnail(savedFileName);
				}
			}
			
			int result = adminEventService.eventModifyConfirm(eventVo);
			
			if (result <= 0) {
				nextPage = "admin/event/event_write_ng";
				return nextPage;
			}
			return "redirect:/admin/event";

		}
	
	// 이벤트 삭제
	@GetMapping("/deleteEvent")
	public String deleteEvent(@RequestParam("event_no") int event_no) {
		String nextPage = "";
		int result = adminEventService.deleteEvent(event_no);
		if(result < 0 ) {
			nextPage = "admin/event/delete_event_ng";
			return nextPage;
		}
		return "redirect:/admin/event";
	}
}