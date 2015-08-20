<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/include/staticFiles.jsp"/>

<body>
<div class="container">
<jsp:include page="/include/bodyHeader.jsp"/>
<div class="content">
	<h3>삭제할 비밀번호를 입력하세요</h3>
	<form action='<c:url value="/board/Board.do"/>' class="form-inline" method="post">
	<input type="hidden" name="action" value="${next}">
	<input type="hidden" name="bbsno" value="${bbsno}">
	<input type="hidden" name="replynumber" value="${replynumber}">
	<input type="hidden" name="page" value="${page}">
	<input type="password" class="" name="password">
	<input type="submit" class="btn btn-danger" value=" 삭 제 ">
	</form>
</div>
</div>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>
