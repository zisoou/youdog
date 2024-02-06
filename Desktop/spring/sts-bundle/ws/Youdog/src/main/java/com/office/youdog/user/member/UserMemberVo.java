package com.office.youdog.user.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserMemberVo {

	private int user_no;		
	private String user_id;		
	private String user_pw;		
	private String user_name;	
	private String user_gender;	
	private String user_mail;	
	private String user_phone;	
	private String user_reg_date;
	private String user_mod_date;

}
