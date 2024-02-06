package com.office.youdog.user.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.office.youdog.place.WishPlaceVo;

@Service
@Transactional
public class UserPlaceService {
	@Autowired
	UserPlaceDao userPlaceDao;

	public List<WishPlaceVo> listupWishPlace(int user_no) {
		return userPlaceDao.selectWishPlace(user_no);
	}

	public int deleteUserWishPlace(int wplace_no) {
		return userPlaceDao.deleteUserWishPlace(wplace_no);
	}

	public int selectPlaceNoByWplaceNo(int wplace_no) {
		return userPlaceDao.selectPlaceNoByWplaceNo(wplace_no);
	}

	public void minusPlaceLikes(int place_no) {
		userPlaceDao.minusPlaceLikes(place_no);
	}
	
}
