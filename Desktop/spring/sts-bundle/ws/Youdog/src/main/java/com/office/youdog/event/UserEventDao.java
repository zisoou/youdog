package com.office.youdog.event;

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
public class UserEventDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<EventVo> selectEventList(EventVo eventVo) {
		return sqlSessionTemplate.selectList("userEvent.selectEventList", eventVo);
	}
	
	public int selectEventListTotal () {
		return sqlSessionTemplate.selectOne("userEvent.selectEventListTotal");
	}

}
