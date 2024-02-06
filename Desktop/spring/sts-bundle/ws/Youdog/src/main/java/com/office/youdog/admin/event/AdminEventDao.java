package com.office.youdog.admin.event;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.office.youdog.bulletin.BulletinVo;
import com.office.youdog.event.EventVo;
import com.office.youdog.place.PlaceController;
import com.office.youdog.place.PlaceVo;

@Component
public class AdminEventDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int insertEvent(EventVo eventVo) {
		return sqlSessionTemplate.insert("adminEvent.insertEvent", eventVo);
	}

	public List<EventVo> selectEventList() {
		return sqlSessionTemplate.selectList("adminEvent.selectEventList");
	}

	public int deleteEvent(int event_no) {
		return sqlSessionTemplate.delete("adminEvent.deleteEvent", event_no);
	}

	public EventVo selectEventByNo(int event_no) {
		return sqlSessionTemplate.selectOne("adminEvent.selectEventByNo", event_no);
	}

	public int modifyEvent(EventVo eventVo) {
		return sqlSessionTemplate.update("adminEvent.modifyEvent", eventVo);
	}
	
	
}
