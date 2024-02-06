package com.office.youdog.admin.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;


@Component
public class AdminMemberDao {
//	mybatis로 대처함
//	@Autowired
//	private JdbcTemplate jdbcTemplate; 
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	// mybatis
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; 
	
	
	public int createAccountConfirm(AdminMemberVo adminMemberVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean isAdminMember(String admin_id) {
		return (Integer)sqlSessionTemplate.selectOne("admin.selectcount", admin_id) > 0;
//		String sql = "select count(*) from admin_member where admin_id = ?";
//		int result =  jdbcTemplate.queryForObject(sql, Integer.class, admin_id);		
//		
//		return result > 0;
	}

	public int insertAdminAccount(AdminMemberVo adminMemberVo) {
		String encodPsw = passwordEncoder.encode( adminMemberVo.getAdmin_pw() );
		adminMemberVo.setAdmin_pw(encodPsw);
		return sqlSessionTemplate.insert("admin.admininsert", adminMemberVo);	
	}
	
	
	public AdminMemberVo selectById(String admin_id) {
		return sqlSessionTemplate.selectOne("admin.selectById", admin_id);
	}
	
	public AdminMemberVo selectAdmin(AdminMemberVo adminMemberVo) {
		AdminMemberVo vo 
		=sqlSessionTemplate.selectOne("admin.adminselect", adminMemberVo);
//		 패스워드 검증
		if( vo!=null && passwordEncoder.matches(adminMemberVo.getAdmin_pw(),
				vo.getAdmin_pw() ))
			return vo;
		else
			return null;
	}
	
	
	public void modifyAccountConfirm(AdminMemberVo adminMemberVo) {
		sqlSessionTemplate.update("admin.adminaccountupdate", adminMemberVo);
		
	}
	

	public List<AdminMemberVo> selectAdmin() {		
		return sqlSessionTemplate.selectList("admin.adminselectall");		
	}
	
	public void setAdminApproval(int admin_no) {
		sqlSessionTemplate.update("admin.adminupdate", admin_no);	
	}

	public void setAdminDenial(int admin_no) {
		sqlSessionTemplate.update("admin.adminupdateDenial", admin_no);
		
	}
	
	
}
