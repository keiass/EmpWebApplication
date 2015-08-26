<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>

<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
	<h3>비밀번호를 입력하세요.</h3>
	<form action="<c:url value='/member/Member.do'/>" method="post">
		<input type="password" class="form-control" name="password">
		<input type="hidden" class="form-control"  name="action" value="delete">
		<input type="submit" class="btn btn-danger" value=" 회원정보를 영구 삭제합니다. ">
	</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
