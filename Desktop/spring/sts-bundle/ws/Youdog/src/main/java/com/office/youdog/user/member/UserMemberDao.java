package com.office.youdog.user.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class UserMemberDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	public int createAccountConfirm(UserMemberVo userMemberVo) {
		userMemberVo.setUser_pw( passwordEncoder.encode(userMemberVo.getUser_pw()) );
		return sqlSessionTemplate.insert("user.insert", userMemberVo);
	}

	public UserMemberVo loginConfirm(UserMemberVo userMemberVo) {
		String user_id = userMemberVo.getUser_id();
		UserMemberVo vo = sqlSessionTemplate.selectOne("user.selectOne"
				, user_id);
		return passwordEncoder.matches(userMemberVo.getUser_pw(),vo.getUser_pw())? vo : null;
		
	}

	public int modifyAccountConfirm(UserMemberVo userMemberVo) {
		return sqlSessionTemplate.update("user.update", userMemberVo);		
	}

	public UserMemberVo selectUser(String user_id, String user_name, String user_mail) {
		UserMemberVo vo = new UserMemberVo();
		vo.setUser_id(user_id); vo.setUser_name(user_name); vo.setUser_mail(user_mail);
		return sqlSessionTemplate.selectOne("user.findPswSelect", vo);
	}

	public int updatePassword(String user_id, String user_pw) {
		UserMemberVo vo = new UserMemberVo();
		user_pw = passwordEncoder.encode(user_pw);
		vo.setUser_id(user_id); vo.setUser_pw(user_pw);
		return sqlSessionTemplate.update("user.updatePsw", vo);
	}

	public boolean selectById(String user_id) {
		UserMemberVo vo =  sqlSessionTemplate.selectOne("user.selectOne", user_id);		
		return vo!=null;
	}

}
