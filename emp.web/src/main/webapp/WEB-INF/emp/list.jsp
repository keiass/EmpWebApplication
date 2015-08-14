<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Emp List</h1>
<c:forEach var="emp" items="${empList}">
${emp.ename}, ${emp.ename}<br>
</c:forEach>
</body>
</html>