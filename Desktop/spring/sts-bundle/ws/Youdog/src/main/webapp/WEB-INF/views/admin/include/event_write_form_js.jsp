
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	function eventWrite() {

		let form = document.event_write_form;

		if (form.event_title.value == '') {
			alert('INPUT EVENT TITLE.');
			form.event_title.focus();

		} else if (form.file.value == '') {
			alert('SELECT THUMBNAIL IMAGE FILE');
			form.file.focus();

		} else if (form.event_link.value == '') {
			alert('INPUT EVENT LINK.');
			form.event_link.focus();

		} else {
			form.submit();

		}

	}
</script>