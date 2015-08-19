<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>
<h1>Emp List</h1>
<c:forEach var="emp" items="${empList}">
${emp.empno}, ${emp.ename}<br>
</c:forEach>
</body>
</html>