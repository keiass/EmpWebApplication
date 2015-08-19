<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<c:set var="active" value="${param}" scope="page"/>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
        <fmt:message key="title"/>
      </a>
    </div>
  </div>
</nav>
<nav class="navbar navbar-default">
  <div class="container-fluid">
	<ul class="nav nav-pills">
	  <li role="presentation" class="${active eq '{list=}' ? 'active' : ''}"><a href='<c:url value="/emp/Emp?list"></c:url>'><fmt:message key="menu1"/></a>
	  <li role="presentation" class="${active eq '{insert=}' ? 'active' : ''}"><a href='<c:url value="/emp/Emp?insert"></c:url>'><fmt:message key="menu2"/></a>
	  <li role="presentation" class="${active eq '{menu3=}' ? 'active' : ''}"><a href='<c:url value="/?menu3"></c:url>'><fmt:message key="menu3"/></a>
	  <li role="presentation" class="${active eq '{menu4=}' ? 'active' : ''}"><a href='<c:url value="/?menu4"></c:url>'><fmt:message key="menu4"/></a>
	  <li role="presentation" class="${active eq '{menu5=}' ? 'active' : ''}"><a href='<c:url value="/?menu5"></c:url>'><fmt:message key="menu5"/></a>
	  <li role="presentation" class="${active eq '{menu6=}' ? 'active' : ''}"><a href='<c:url value="/?menu6"></c:url>'><fmt:message key="menu6"/></a>
	</ul>
  </div>
</nav>
