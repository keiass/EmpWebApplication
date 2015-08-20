<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/head.jsp" %>
</head>
<body>
<header>
<%@ include file="/WEB-INF/include/header.jsp" %>
</header>
<section>
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Hello World!</h3>
  </div>
  <div class="panel-body">
    content
  </div>
</div>
</section>
<footer>
</footer>
</body>
</html>
