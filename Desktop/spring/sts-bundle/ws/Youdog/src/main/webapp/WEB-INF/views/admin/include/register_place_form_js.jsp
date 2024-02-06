<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function registerPlaceForm() {
		
		let form = document.register_place_form;
		
		if (form.place_name.value == '') {
			alert('INPUT PLACE NAME.');
			form.place_name.focus();
			
		} else if (form.file.value == '') {
			alert('SELECT IMAGE FILE');
			form.place_thumbnail.focus();
			
		} else if (form.place_address.value == '') {
			alert('INPUT PLACE ADDRESS.');
			form.place_address.focus();
			
		} else if (form.place_site.value == '') {
			alert('INPUT PLACE SITE.');
			form.place_site.focus();
			
		} else if (form.place_call_number.value == '') {
			alert('INPUT PLACE CALL NUMBER.');
			form.place_call_number.focus();
			
		} else if (form.place_cate.value == '') {
			alert('INPUT PLACE CATEGORY.');
			form.place_cate.focus();
			
		} else if (form.place_inout.value == '') {
			alert('INPUT PLACE IN OR OUT.');
			form.place_inout.focus();
			
		} else if (form.place_ispn.value == '') {
			alert('INPUT PLACE IN OR OUT.');
			form.place_ispn.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>