<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function modifyAccountForm() {
		console.log('modifyAccountForm() CALLED!!');
		
		let form = document.modify_account_form;
		
		if (form.admin_name.value == '') {
			alert('INPUT ADMIN NAME.');
			form.admin_name.focus();
			
		} else if (form.admin_gender.value == '') {
			alert('SELECET ADMIN GENDER.');
			form.admin_gender.focus();
			
		} else if (form.admin_company.value == '') {
			alert('INPUT ADMIN company.');
			form.admin_company.focus();
			
		} else if (form.admin_mail.value == '') {
			alert('INPUT ADMIN MAIL.');
			form.admin_mail.focus();
			
		} else if (form.admin_phone.value == '') {
			alert('INPUT ADMIN PHONE.');
			form.admin_phone.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>