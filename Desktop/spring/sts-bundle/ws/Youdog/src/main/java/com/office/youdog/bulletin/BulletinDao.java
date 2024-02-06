package com.office.youdog.bulletin;

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
public class BulletinDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int bulletinWrite(BulletinVo bulletinVo) {
		return sqlSessionTemplate.insert("bulletinSql.bulletinWrite", bulletinVo);
	}

	public List<BulletinVo> listupAllBulletin() {
		return sqlSessionTemplate.selectList("bulletinSql.listupAllBulletin");
	}

	public BulletinVo detailBulletin(int b_no) {
		return sqlSessionTemplate.selectOne("bulletinSql.detailBulletin", b_no);
	}

	public void increaseVeiws(int b_no) {
		sqlSessionTemplate.update("bulletinSql.increaseVeiws", b_no);
	}

	public int modifyBulletinConfirm(BulletinVo bulletinVo) {
		return sqlSessionTemplate.update("bulletinSql.modifyBulletinConfirm", bulletinVo);
	}

	public void deleteBulletin(int b_no) {
		sqlSessionTemplate.delete("bulletinSql.deleteBulletin", b_no);
	}

	
	
	
	
	
	
	
	
	
}
