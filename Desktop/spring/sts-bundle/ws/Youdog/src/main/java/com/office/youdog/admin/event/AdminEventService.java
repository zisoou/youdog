package com.office.youdog.admin.event;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.youdog.bulletin.BulletinVo;
import com.office.youdog.event.EventVo;
import com.office.youdog.place.PlaceController;
import com.office.youdog.place.PlaceVo;

@Service
public class AdminEventService {

	@Autowired
	AdminEventDao adminEventDao;
	/*
	 * public int bulletinWrite(BulletinVo bulletinVo) { return
	 * adminBulletinDao.bulletinWrite(bulletinVo); } public List<BulletinVo>
	 * listupAllBulletin() { return adminBulletinDao.listupAllBulletin(); } public
	 * BulletinVo detailBulletin(int b_no) { return
	 * adminBulletinDao.detailBulletin(b_no); } public void increaseVeiws(int b_no)
	 * { adminBulletinDao.increaseVeiws(b_no); } public int
	 * modifyBulletinConfirm(BulletinVo bulletinVo) {
	 * 
	 * return adminBulletinDao.modifyBulletinConfirm(bulletinVo); }
	 */

	public int eventWriteConfirm(EventVo eventVo) {
		return adminEventDao.insertEvent(eventVo);
	}

	public List<EventVo> selectEventList() {
		return adminEventDao.selectEventList();
	}
	
	public int deleteEvent(int event_no) {
		return adminEventDao.deleteEvent(event_no);
	}

	public EventVo selectEventByNo(int event_no) {
		return adminEventDao.selectEventByNo(event_no);
	}

	public int eventModifyConfirm(EventVo eventVo) {
		return adminEventDao.modifyEvent(eventVo);
	}
	
}
