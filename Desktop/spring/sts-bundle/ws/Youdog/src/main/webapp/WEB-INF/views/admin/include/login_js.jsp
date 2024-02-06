<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function loginForm() {
		
		let form = document.login_form;
		
		if (form.admin_id.value == '') {
			alert('INPUT ADMIN ID.');
			form.admin_id.focus();
			
		} else if (form.admin_pw.value == '') {
			alert('INPUT ADMIN PW.');
			form.admin_pw.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>