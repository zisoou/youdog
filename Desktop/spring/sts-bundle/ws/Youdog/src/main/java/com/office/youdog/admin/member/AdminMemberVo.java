package com.office.youdog.admin.member;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminMemberVo {

	int admin_no;		// 관리자 번호
	int admin_approval;		// 최고 관리자 승인 여부
	String admin_id;			// 관리자 아이디
	String admin_pw;			// 관리자 비밀번호
	String admin_name;		// 관리자 이름
	String admin_gender;		// 관리자 성별 구분
	String admin_company; 		// 관리자 회사
	String admin_mail;		// 관리자 메일
	String admin_phone;		// 관리자 연락처
	String admin_reg_date;		// 관리자 등록일
	String admin_mod_date;		// 관리자 수정일
}
