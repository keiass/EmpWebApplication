<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/WEB-INF/include/staticFiles.jsp"/>

<body>
<div class="container">
<div class="page">
<jsp:include page="/WEB-INF/include/bodyHeader.jsp"/>
<div class="content">
<%--
String userid = (String)session.getAttribute("userid");
if(userid==null) {
--%>
<c:if test="${empty sessionScope.userid}">
	<h3>로그인 폼</h3>
	<h4>${message}</h4>
	<h4><%--= request.getAttribute("message") --%></h4>
	<h4><%-- 
		String message = (String)request.getAttribute("message");
		out.println(message);
	--%></h4>
	<form action="<c:url value='/member/Login.do'/>" method="post"  class="form-inline">
	아이디 : <input type="text" class="form-control" name="userid"><br>
	비밀번호 : <input type="password"  class="form-control" name="password"><br>
	<input type="submit" class="btn btn-default" value="로그인">
	<input type="reset" class="btn btn-default" value="취  소">
	</form>
</c:if>
<%--
}else {
--%>
<c:if test="${not empty sessionScope.userid}">
	<h1>${userid}님 로그인</h1>
	<a href="<c:url value='/member/Member.do?action=select'/>">정보수정</a>
	<a href="<c:url value='/member/Login.do'/>">로그아웃</a>
	<a href="<c:url value='/member/Member.do?action=delete'/>">회원탈퇴</a>
</c:if>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
</div>
</div>
</body>
</html>


