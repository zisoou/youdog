package com.office.youdog.user.place;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.office.youdog.place.HopePlaceVo;
import com.office.youdog.place.PlaceVo;
import com.office.youdog.place.WishPlaceVo;

@Component
public class UserPlaceDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<WishPlaceVo> selectWishPlace(int user_no) {
		return sqlSessionTemplate.selectList("userplace.wishPlaceSelectAll",user_no);
	}

	public int deleteUserWishPlace(int wplace_no) {
		return sqlSessionTemplate.delete("userplace.deleteUserWishPlace",wplace_no);
	}

	public int selectPlaceNoByWplaceNo(int wplace_no) {
		return sqlSessionTemplate.selectOne("userplace.selectPlaceNoByWplaceNo", wplace_no);
	}

	public void minusPlaceLikes(int place_no) {
		sqlSessionTemplate.update("userplace.minusPlaceLikes", place_no);
	}


}