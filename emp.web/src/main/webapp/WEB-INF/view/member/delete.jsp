<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><a href="<c:url value='/view?member/login'/>"><fmt:message key="PW"/></a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Member</li>
                    <li class="active">Exit Member</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
	<h3><fmt:message key="PW"/></h3>
	<form action="<c:url value='/member/Member.do'/>" method="post">
		<input type="password" class="form-control" name="password">
		<input type="hidden" class="form-control"  name="action" value="delete">
		<input type="submit" class="btn btn-danger" value="<fmt:message key="DELETE_USER_INFO"/>">
	</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
