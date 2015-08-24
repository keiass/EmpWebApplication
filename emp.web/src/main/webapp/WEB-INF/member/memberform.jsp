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
<h3>회원 정보 입력 폼<small>${message}</small></h3>
<form action="<c:url value='/member/Member.do'/>" method="post" class="form-inline">
<fieldset>
<legend>회원정보</legend>
<table class="table">
<tr>
	<td>아이디</td>
	<td><input type="text" class="form-control" name="userid" value="${member['userid']}" ${empty member.userid ? "" : "readonly"}></td>
</tr>
<tr>
	<td>비밀번호</td>
	<td><input type="password" class="form-control" name="password" value="${member.password}"></td>
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" class="form-control" name="name" value="${member.name}"></td>
</tr>
<tr>
	<td>전화번호</td>
	<td><input type="text" class="form-control" name="phone" value="${member.phone}"></td>
</tr>
<tr>
	<td>주소</td>
	<td><input type="text" class="form-control" name="address" size="50" value="${member.address}"></td>
</tr>
</table>
	<input type="hidden" name="action" value="${empty member.userid ? '' : 'update'}">
	<input type="submit" class="btn btn-default" value="  저  장  "> 
	<input type="reset" class="btn btn-default" value="  취  소  ">
</fieldset>
</form>

</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
</div>
</div>
</body>
</html>