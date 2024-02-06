<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">

	function deleteEvent(event_no, event_title) {
		
		let result = confirm('이벤트 (' + event_title + ')를(을) 정말 삭제 하시겠습니까?');
		
		if (result)
			location.href = "<c:url value='/admin/event/deleteEvent?event_no='/>" + event_no;
		
	}

</script>