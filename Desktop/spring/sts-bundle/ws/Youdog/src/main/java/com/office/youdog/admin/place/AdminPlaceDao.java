package com.office.youdog.admin.place;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.office.youdog.place.HopePlaceVo;
import com.office.youdog.place.PlaceVo;

@Component
public class AdminPlaceDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int updateRegister(int hoplace_no) {		
		return sqlSessionTemplate.update("adminplace.updateRegister", hoplace_no);
	}
	
	public int insertPlace(PlaceVo placeVo) {
		return sqlSessionTemplate.insert("adminplace.insertplace", placeVo);
	}
	
	public boolean isISPN(String place_ispn) {
		return (Integer)sqlSessionTemplate.selectOne("adminplace.selectByIspn", place_ispn) > 0;
	}
	
	public int requestHopePlaceConfirm(HopePlaceVo hopePlaceVo) {
		return sqlSessionTemplate.insert("adminplace.insertHope", hopePlaceVo);
	}


	public List<HopePlaceVo> selectHopePlace() {
		return sqlSessionTemplate.selectList("adminplace.hopeplaceselectall");
	}

	public void setPlaceApproval(int hoplace_no) {
		sqlSessionTemplate.update("adminplace.placeupdate", hoplace_no);
		
	}

	public void setPlaceDenial(int hoplace_no) {
		sqlSessionTemplate.update("adminplace.placeupdateDenial", hoplace_no);
	}

	public List<PlaceVo> selectPlace() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("adminplace.placeselectall");
	}


}