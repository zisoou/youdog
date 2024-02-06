<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">

	function createAccountForm() {
		
		let form = document.create_account_form;
		
		if (form.admin_id.value == '') {
			alert('INPUT ADMIN ID.');
			form.admin_id.focus();
			
		} else if (form.admin_pw.value == '') {
			alert('INPUT ADMIN PW.');
			form.admin_pw.focus();
			
		} else if (form.admin_pw_again.value == '') {
			alert('INPUT ADMIN PW AGAIN.');
			form.admin_pw_again.focus();
			
		} else if (form.admin_pw.value != form.admin_pw_again.value) {
			alert('Please check your password again.');
			form.admin_pw.focus();
			
		} else if (form.admin_name.value == '') {
			alert('INPUT ADMIN NAME.');
			form.admin_name.focus();
			
		} else if (form.admin_gender.value == '') {
			alert('SELECET ADMIN GENDER.');
			form.admin_gender.focus();
			
		} else if (form.admin_company.value == '') {
			alert('INPUT ADMIN COMPANY.');
			form.admin_company.focus();
			
		} else if (form.admin_mail.value == '') {
			alert('INPUT ADMIN MAIL.');
			form.admindminail.focus();
			
		} else if (form.admin_phone.value == '') {
			alert('INPUT ADMIN PHONE.');
			form.admin_phone.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>