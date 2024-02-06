package com.office.youdog.admin.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.office.youdog.admin.member.AdminMemberVo;
import com.office.youdog.place.HopePlaceVo;
import com.office.youdog.place.PlaceVo;

@Service
@Transactional
public class AdminPlaceService {
	
	 final static public int PLACE_CALL_NUMBER_ALREADY_EXIST = 0; // 이미 등록된 장소
	 final static public int PLACE_REGISTER_SUCCESS = 1; // 신규 장소 등록 성공 final
	 final static public  int PLACE_REGISTER_FAIL = -1; // 신규 장소 등록 실패
	 
	@Autowired
	AdminPlaceDao adminPlaceDao;

	public int updateRegister(int hoplace_no) {
		return adminPlaceDao.updateRegister(hoplace_no);
	}
	
	// ispn 은 사업자 등록 번호 사용 가능/ 혹은 우편번호 등
	public int registerPlaceConfirm(PlaceVo placeVo) { 
  	  boolean isISPN = adminPlaceDao.isISPN(placeVo.getPlace_ispn());
	  
	  if (!isISPN) { 
		  int result = adminPlaceDao.insertPlace(placeVo);
	  		
		  if (result > 0) return PLACE_REGISTER_SUCCESS;
		  
		  else return PLACE_REGISTER_FAIL;
	  
	  } else { return PLACE_CALL_NUMBER_ALREADY_EXIST;
	  
	  } }
	
	
	public int requestHopePlaceConfirm(HopePlaceVo hopePlaceVo) {		
		return adminPlaceDao.requestHopePlaceConfirm(hopePlaceVo);
	}

	public List<HopePlaceVo> listupHopePlace() {
		return adminPlaceDao.selectHopePlace();
	}

	public void setPlaceApproval(int hoplace_no) {
		adminPlaceDao.setPlaceApproval(hoplace_no);
		
	}

	public void setPlaceDenial(int hoplace_no) {
		adminPlaceDao.setPlaceDenial(hoplace_no);
		
	}

	public List<PlaceVo> listupPlace() {
		return adminPlaceDao.selectPlace();
	}




	
}
