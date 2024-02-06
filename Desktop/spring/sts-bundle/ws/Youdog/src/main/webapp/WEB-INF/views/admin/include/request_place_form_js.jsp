<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function requestHopePlaceConfirm() {
		
		let form = document.request_hope_place_form;
		
		if (form.hoplace_name.value == '') {
			alert('INPUT PLACE NAME.');
			form.place_name.focus();
			
		} else if (form.file.value == '') {
			alert('SELECT IMAGE FILE');
			form.place_thumbnail.focus();
			
		} else if (form.hoplace_address.value == '') {
			alert('INPUT PLACE ADDRESS.');
			form.place_address.focus();
			
		} else if (form.hoplace_site.value == '') {
			alert('INPUT PLACE SITE.');
			form.place_site.focus();
			
		} else if (form.hoplace_call_number.value == '') {
			alert('INPUT PLACE CALL NUMBER.');
			form.place_call_number.focus();
			
		} else if (form.hoplace_cate.value == '') {
			alert('INPUT PLACE CATEGORY.');
			form.place_cate.focus();
			
		} else if (form.hoplace_inout.value == '') {
			alert('INPUT PLACE IN OR OUT.');
			form.place_inout.focus();
			
		} else if (form.hoplace_ispn.value == '') {
			alert('INPUT PLACE IN OR OUT.');
			form.place_ispn.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>