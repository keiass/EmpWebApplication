<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=0.5, minimum-scale=0.5, maximum-scale=3.0, target-densitydpi=device-dpi" />

<title><fmt:message key="title"/></title>
<link rel="shortcut icon" type="image/x-icon" href="/static/favicon/favicon.ico" />
<link href="icon.png" rel="apple-touch-icon" />
<link href="icon.png" media="screen and (resolution: 163dpi)" rel="apple-touch-icon" />
<link href="icon.png" media="screen and (resolution: 132dpi)" rel="apple-touch-icon" />
<link href="icon.png" media="screen and (resolution: 326dpi)" rel="apple-touch-icon" />

<!-- 디폴트 css 파일 -->
<link rel="stylesheet" href='<c:url value="/css/default.css"/>'/>

<!--[if lt IE 9 ]><link rel="stylesheet" type="text/css" href="<c:url value="/css/default_ie.css"/>" /><![endif]-->
<link rel="stylesheet" type="text/css" media="all and (min-width: 0px) and (max-width:767px)" href="<c:url value="/css/default_mobile.css"/>" />
<link rel="stylesheet" type="text/css" media="all and (min-width:768px) and (max-width:1099px)" href="<c:url value="/css/default_tab.css"/>" />
<link rel="stylesheet" type="text/css" media="all and (min-width:1100px) and (max-width: 2800px)" href="<c:url value="/css/default_pc.css"/>" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>