package com.office.youdog.place;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.office.youdog.admin.member.AdminMemberVo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PlaceVo {

	private int place_no;
	private String place_thumbnail;
	private String place_name; 	
	private String place_address; 	
	private String place_site;
	private String place_call_number; 	
	private String place_cate;
	private String place_inout; 
	private int place_likes;
	private int place_views;
	private String place_ispn;
	
	
}
