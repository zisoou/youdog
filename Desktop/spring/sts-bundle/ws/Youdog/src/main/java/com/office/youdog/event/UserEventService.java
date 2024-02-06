package com.office.youdog.event;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.youdog.event.EventVo;

@Service
public class UserEventService {

	@Autowired
	UserEventDao userEventDao;

	public List<EventVo> selectEventList(EventVo eventVo) {
		return userEventDao.selectEventList(eventVo);
	}
	
	public int selectEventListTotal () {
		return userEventDao.selectEventListTotal();
	}
	
}
