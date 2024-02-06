package com.office.youdog.user.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.youdog.CommonService;
import com.office.youdog.admin.member.AdminMemberVo;

@Service
public class UserMemberService {
	@Autowired
	UserMemberDao userMemberDao;
	@Autowired
	CommonService commonService;
	
	public int createAccountConfirm(UserMemberVo userMemberVo) {		
		return userMemberDao.createAccountConfirm(userMemberVo);
	}

	public UserMemberVo loginConfirm(UserMemberVo userMemberVo) {		
		return userMemberDao.loginConfirm(userMemberVo);
	}

	public int modifyAccountConfirm(UserMemberVo userMemberVo) {
		return userMemberDao.modifyAccountConfirm(userMemberVo);		
	}

	/*
	 * public int findPasswordConfirm(UserMemberVo userMemberVo) {
	 * 
	 * UserMemberVo selectedUserMemberVo =
	 * userMemberDao.selectUser(userMemberVo.getUser_id(),
	 * userMemberVo.getUser_name(), userMemberVo.getUser_mail());
	 * 
	 * int result = 0;
	 * 
	 * if (selectedUserMemberVo != null) {
	 * 
	 * String newPassword = commonService.createNewPassword(); result =
	 * userMemberDao.updatePassword(userMemberVo.getUser_id(), newPassword);
	 * 
	 * if (result > 0)
	 * commonService.sendNewPasswordByMail(userMemberVo.getUser_mail(),
	 * newPassword); }
	 * 
	 * return result; }
	 */

	public boolean selectById(String user_id) {
		return userMemberDao.selectById(user_id);		
	}

}
