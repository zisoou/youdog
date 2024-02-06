<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">

	function createAccountForm() {
		
		let form = document.create_account_form;
		
		if (form.user_id.value == '') {
			alert('INPUT USER ID.');
			form.user_id.focus();
			
		} else if (form.user_pw.value == '') {
			alert('INPUT USER PW.');
			form.user_pw.focus();
			
		} else if (form.user_pw_again.value == '') {
			alert('INPUT USER PW AGAIN.');
			form.user_pw_again.focus();
			
		} else if (form.user_pw.value != form.user_pw_again.value) {
			alert('Please check your password again.');
			form.user_pw.focus();
			
		} else if (form.user_name.value == '') {
			alert('INPUT USER NAME.');
			form.user_name.focus();
			
		} else if (form.user_gender.value == '') {
			alert('SELECET USER GENDER.');
			form.user_gender.focus();
			
		} else if (form.user_mail.value == '') {
			alert('INPUT USER MAIL.');
			form.userdminail.focus();
			
		} else if (form.user_phone.value == '') {
			alert('INPUT USER PHONE.');
			form.user_phone.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>