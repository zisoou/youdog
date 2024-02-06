package com.office.youdog.admin.bulletin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.youdog.bulletin.BulletinVo;
import com.office.youdog.place.PlaceController;
import com.office.youdog.place.PlaceVo;

@Service
public class AdminBulletinService {

	@Autowired
	AdminBulletinDao adminBulletinDao;
	public int bulletinWrite(BulletinVo bulletinVo) {
		return adminBulletinDao.bulletinWrite(bulletinVo);
	}
	public List<BulletinVo> listupAllBulletin() {
		return adminBulletinDao.listupAllBulletin();
	}
	public BulletinVo detailBulletin(int b_no) {
		return adminBulletinDao.detailBulletin(b_no);
	}
	public void increaseVeiws(int b_no) {
		adminBulletinDao.increaseVeiws(b_no);
	}
	public int modifyBulletinConfirm(BulletinVo bulletinVo) {	
		return adminBulletinDao.modifyBulletinConfirm(bulletinVo);
	}
	public void deleteBulletin(int b_no) {
		adminBulletinDao.deleteBulletin(b_no);	
	}

	
}
