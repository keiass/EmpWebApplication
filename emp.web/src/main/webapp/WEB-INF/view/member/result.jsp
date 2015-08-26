<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>

<body>
<div class="container">
<div class="page">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
<h1>실행 결과</h1>
<h2>${message}</h2>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</div>
</div>
</body>
</html>
