<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow">
    
    <title><fmt:message key="title"/></title>
    <!-- Favicon -->
    <link href="<c:url value='/images/favicon.png'/>" rel="icon" type="image/png">

	<link rel="stylesheet" href="<c:url value="/css/default.css"/>">
    <!-- Essential styles -->
    <link rel="stylesheet" href="<c:url value='/assets/bootstrap/css/bootstrap.min.css" type="text/css'/>">
    <link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css" type="text/css'/>"> 
    <link rel="stylesheet" href="<c:url value='/assets/fancybox/jquery.fancybox.css?v=2.1.5" media="screen'/>"> 
     
    <!-- Boomerang styles -->
    <link id="wpStylesheet" type="text/css" href="<c:url value='/css/global-style.css" rel="stylesheet" media="screen'/>">  

    <!-- Required JS -->
    <script src="<c:url value='/js/jquery.js'/>"></script>
    <script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
</head>