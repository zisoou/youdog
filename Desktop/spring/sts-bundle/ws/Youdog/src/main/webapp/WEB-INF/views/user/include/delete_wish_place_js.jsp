<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">

function deleteWishPlaceAlert(wplace_no, place_name){
	
	let result = confirm('찜 리스트에서 (' + place_name + ')를(을) 정말 삭제 하시겠습니까?');
	
	if (result)
		location.href = "<c:url value='/user/place/deleteUserWishPlace?wplace_no='/>" + wplace_no;
}

</script>