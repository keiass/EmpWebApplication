<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<!-- HEADER -->
<div id="divHeaderWrapper">
  <header class="header-standard-2">     
    <!-- MAIN NAV -->
    <div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fa fa-bars icon-custom"></i>
                </button>
                <a class="navbar-brand" href="<c:url value='/'/>" title="ssg dash">
                	<fmt:message key="title"/>
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden-md hidden-lg">
                        <div class="bg-light-gray">
                            <form class="form-horizontal form-light p-15" role="form">
                                <div class="input-group input-group-lg">
                                    <input type="text" class="form-control" placeholder="I want to find ...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-white" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href='<c:url value="/"/>' class="dropdown-toggle"><fmt:message key="menu_dashboard"/></a>
                        <!-- ul class="dropdown-menu">
                            <li><a href='<c:url value="/"/>'><fmt:message key="menu_dashboard"/></a></li>
                        </ul-->
                    </li>
                    <li class="dropdown">
                        <a href='<c:url value="/"/>' class="dropdown-toggle" data-toggle="dropdown">Board</a>
                        <ul class="dropdown-menu">
                        	<li><a href="<c:url value='/board'/>">Board Datatables List</a>
                            <li><a href="<c:url value='/board?list'/>">Board List</a>
                            <li><a href="<c:url value='/board?write'/>">Write New Article</a>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search</a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value='/view?manage/searchProductForm'/>">My Name</a></li>
                            <li><a href="<c:url value='/view?manage/searchProductByLocationForm'/>">By Location</a></li>
                            <li><a href="<c:url value='/view?manage/searchProductByDeptForm'/>">By Department</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href='#' class="dropdown-toggle" data-toggle="dropdown">Emp Test</a>
                        <ul class="dropdown-menu">
                            <li><a href='<c:url value="/emp?list"/>'>EMP List</a></li>
        					<li role="separator" class="divider"></li>
	    					<li><a href='<c:url value="/emp?insert"/>'>New Employment</a></li>
                        </ul>
                    </li>
                    <li class="dropdown dropdown-aux animate-click" data-animate-in="animated bounceInUp" data-animate-out="animated fadeOutDown" style="z-index:500;">
                        <a href="#" class="dropdown-form-toggle" data-toggle="dropdown"><i class="fa fa-search"></i></a>
                        <ul class="dropdown-menu dropdown-menu-user animate-wr">
                            <li id="dropdownForm">
                                <div class="dropdown-form">
                                    <form class="form-horizontal form-light p-15" action="<c:url value='/manage/Search.do'/>" method="post" role="form">
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="keyword" placeholder="키워드를 입력하세요.">
                                            <span class="input-group-btn">
                                                <input type="submit" class="btn btn-base" value="Go">
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </li>
                   <li><div>
                   <c:if test="${empty userid}">
                   <br><a href="<c:url value='/view?member/login'/>" class="btn btn-danger">Sign in</a>
                   </c:if>
                   <c:if test="${!empty userid}">
                   <br><a href="<c:url value='/login'/>" class="btn btn-danger">Sign Out</a>
                   </c:if>
                   </div>
                    </li>
                </ul>
               
            </div><!--/.nav-collapse -->
        </div>
    </div>
  </header>
</div>          