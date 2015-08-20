<%@ page contentType="text/html; charset=utf-8" isErrorPage="true"%>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/include/staticFiles.jsp"/>

<body>
<div class="container">
<div class="page">
<jsp:include page="/include/bodyHeader.jsp"/>
<div class="content">
<h3>${message}</h3>
<%
if(exception != null)
out.println(exception.getMessage());
%>
</div>
<jsp:include page="/include/footer.jsp"/>
</div>
</div>
</body>
</html>