package com.office.youdog.place;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlaceService {
	private static final Logger logger = LoggerFactory.getLogger(PlaceController.class);
	@Autowired
	PlaceDao placeDao;

	public List<PlaceVo> listupPlace() {
		return placeDao.selectPlace();
	}

	public void placeLikes(int place_no) {
		placeDao.placeLikes(place_no);
	}
	
	public void placeHates(int place_no) {
		placeDao.placeHates(place_no);
	}
	
	public void insertWishPlace(int user_no, int place_no) {
		placeDao.insertWishPlace(user_no,  place_no);
		
	}
	
	public void deleteWishPlace(int user_no, int place_no) {
		placeDao.deleteWishPlace(user_no,  place_no);	
	}
	
	public String LikeListupPlace(int user_no) {
		return placeDao.LikeListupPlace(user_no);
	}


	/*
	 * public List<Integer> ListupPlaceNo() { return placeDao.ListupPlaceNo(); }
	 */
}
