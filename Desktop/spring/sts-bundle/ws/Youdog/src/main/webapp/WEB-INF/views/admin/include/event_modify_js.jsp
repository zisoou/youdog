<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	function eventModify() {

		let form = document.event_modify_form;

		if (form.event_title.value == '') {
			alert('INPUT EVENT TITLE.');
			form.event_title.focus();

		} else if (form.event_link.value == '') {
			alert('INPUT EVENT LINK.');
			form.event_link.focus();
			
		} else {
			form.submit();

		}
	}
	
	function modifyEvent(event_no){
		location.href = "<c:url value='/admin/event/modifyEventForm?event_no='/>" + event_no;
	}
</script>