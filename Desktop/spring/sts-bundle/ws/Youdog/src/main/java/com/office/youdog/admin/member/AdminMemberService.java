package com.office.youdog.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.office.youdog.CommonService;

@Service
public class AdminMemberService {
	final static public int ADMIN_ACCOUNT_ALREADY_EXIST = 0;
	final static public int ADMIN_ACCOUNT_CREATE_SUCCESS = 1;
	final static public int ADMIN_ACCOUNT_CREATE_FAIL = -1;

	@Autowired
	private AdminMemberDao adminMemberDao;
	
	@Autowired
	CommonService commonService;

	public int createAccountConfirm(AdminMemberVo adminMemberVo) {
		boolean isMember = adminMemberDao.isAdminMember(adminMemberVo.getAdmin_id());
		if (!isMember) {
			int result = adminMemberDao.insertAdminAccount(adminMemberVo);
			if (result > 0)
				return ADMIN_ACCOUNT_CREATE_SUCCESS;
			else
				return ADMIN_ACCOUNT_CREATE_FAIL;
		} else
			return ADMIN_ACCOUNT_ALREADY_EXIST;

	}
	
	public AdminMemberVo loginConfirm(AdminMemberVo adminMemberVo) {
		AdminMemberVo loginedAdminMemberVo = adminMemberDao.selectAdmin(adminMemberVo);
		if (loginedAdminMemberVo != null)
			System.out.println("[AdminMemberService] ADMIN MEMBER LOGIN SUCCESS!!");
		else
			System.out.println("[AdminMemberService] ADMIN MEMBER LOGIN FAIL!!");
		return loginedAdminMemberVo;
	}

	public AdminMemberVo selectById(String admin_id) {
		return adminMemberDao.selectById(admin_id);
	}

	public void modifyAccountConfirm(AdminMemberVo adminMemberVo) {
		adminMemberDao.modifyAccountConfirm(adminMemberVo);
	}
	
	
	public List<AdminMemberVo> listupAdmin() {
		return adminMemberDao.selectAdmin();
	}
	
	public void setAdminApproval(int admin_no) {
		adminMemberDao.setAdminApproval(admin_no);
	}

	public void setAdminDenial(int admin_no) {
		adminMemberDao.setAdminDenial(admin_no);
		
	}
	
	
}
