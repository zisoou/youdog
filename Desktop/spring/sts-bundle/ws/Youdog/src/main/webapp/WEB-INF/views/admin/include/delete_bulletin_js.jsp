<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	function deleteBulletin() {
		if (confirm('게시물을 삭제하시겠습니까?')) {
			var deleteUrl = '<c:url value="deleteBulletin"/>'
					+ '?b_no=${bulletinVo.getBulletin_no()}';
			window.location.href = deleteUrl;
		}
	}
</script>