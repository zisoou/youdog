<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function loginForm() {
		
		let form = document.login_form;
		
		if (form.user_id.value == '') {
			alert('INPUT USER ID.');
			form.user_id.focus();
			
		} else if (form.user_pw.value == '') {
			alert('INPUT USER PW.');
			form.user_pw.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>