package com.office.youdog.bulletin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.youdog.bulletin.BulletinVo;
import com.office.youdog.place.PlaceController;
import com.office.youdog.place.PlaceVo;

@Service
public class BulletinService {

	@Autowired
	BulletinDao bulletinDao;
	public int bulletinWrite(BulletinVo bulletinVo) {
		return bulletinDao.bulletinWrite(bulletinVo);
	}
	public List<BulletinVo> listupAllBulletin() {
		return bulletinDao.listupAllBulletin();
	}
	public BulletinVo detailBulletin(int b_no) {
		return bulletinDao.detailBulletin(b_no);
	}
	public void increaseVeiws(int b_no) {
		bulletinDao.increaseVeiws(b_no);
	}
	public int modifyBulletinConfirm(BulletinVo bulletinVo) {	
		return bulletinDao.modifyBulletinConfirm(bulletinVo);
	}
	public void deleteBulletin(int b_no) {
		bulletinDao.deleteBulletin(b_no);	
	}

	
}
