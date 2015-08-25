<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/WEB-INF/include/staticFiles.jsp"/>

<body>
<div class="container">
<jsp:include page="/WEB-INF/include/bodyHeader.jsp"/>
<div class="content">
	<h3>글 비밀번호를 입력하세요</h3>
	<form action='<c:url value="/board/Board"/>' class="form-inline" method="post">
	<input type="hidden" name="delete" value="${bbsno}">
	<input type="hidden" name="replynumber" value="${replynumber}">
	<input type="hidden" name="page" value="${page}">
	<input type="password" class="" name="password">
	<input type="submit" class="btn btn-danger" value=" 삭 제 ">
	</form>
</div>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
</body>
</html>
