package com.office.youdog.place;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PlaceDao {
	private static final Logger logger = LoggerFactory.getLogger(PlaceController.class);
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public List<PlaceVo> selectPlace() {
		return sqlSessionTemplate.selectList("placeSql.placeselectall");
	}
	
	
	public void placeLikes(int place_no) {
		sqlSessionTemplate.update("placeSql.placeLikes", place_no);
	}
	
	public void placeHates(int place_no) {
		sqlSessionTemplate.update("placeSql.placeHates", place_no);
	}

	
	public void insertWishPlace(int user_no, int place_no) {
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("user_no", user_no); data.put("place_no", place_no);
		sqlSessionTemplate.insert("placeSql.insertWishPlace", data);
	}
	
	public void deleteWishPlace(int user_no, int place_no) {
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("user_no", user_no); data.put("place_no", place_no);
		sqlSessionTemplate.delete("placeSql.deleteWishPlace", data);
		
	}

	public String LikeListupPlace(int user_no) {
		return sqlSessionTemplate.selectOne("placeSql.likeListupPlace", user_no);
	}







	/*
	 * public List<Integer> ListupPlaceNo() { return
	 * sqlSessionTemplate.selectList("placeSql.listupPlaceNo"); }
	 */
}
