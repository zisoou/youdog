package com.office.youdog.admin.bulletin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.office.youdog.bulletin.BulletinVo;
import com.office.youdog.place.PlaceController;
import com.office.youdog.place.PlaceVo;

@Component
public class AdminBulletinDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int bulletinWrite(BulletinVo bulletinVo) {
		return sqlSessionTemplate.insert("adminBulletin.bulletinWrite", bulletinVo);
	}

	public List<BulletinVo> listupAllBulletin() {
		return sqlSessionTemplate.selectList("adminBulletin.listupAllBulletin");
	}

	public BulletinVo detailBulletin(int b_no) {
		return sqlSessionTemplate.selectOne("adminBulletin.detailBulletin", b_no);
	}

	public void increaseVeiws(int b_no) {
		sqlSessionTemplate.update("adminBulletin.increaseVeiws", b_no);
	}

	public int modifyBulletinConfirm(BulletinVo bulletinVo) {
		return sqlSessionTemplate.update("adminBulletin.modifyBulletinConfirm", bulletinVo);
	}

	public void deleteBulletin(int b_no) {
		sqlSessionTemplate.delete("adminBulletin.deleteBulletin", b_no);
	}

	
	
	
	
	
	
	
	
	
}
