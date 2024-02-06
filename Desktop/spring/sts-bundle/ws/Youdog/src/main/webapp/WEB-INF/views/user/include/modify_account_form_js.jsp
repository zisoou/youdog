<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function modifyAccountForm() {
		console.log('modifyAccountForm() CALLED!!');
		
		let form = document.modify_account_form;
		
		if (form.user_name.value == '') {
			alert('INPUT USER NAME.');
			form.user_name.focus();
			
		} else if (form.user_gender.value == '') {
			alert('SELECET USER GENDER.');
			form.user_gender.focus();
			
		} else if (form.user_mail.value == '') {
			alert('INPUT USER MAIL.');
			form.user_mail.focus();
			
		} else if (form.user_phone.value == '') {
			alert('INPUT USER PHONE.');
			form.user_phone.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>