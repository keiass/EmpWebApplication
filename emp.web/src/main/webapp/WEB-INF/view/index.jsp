<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><a href="<c:url value='/'/>">Dashboard</a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Dashboard</li>
                    <li class="active"><a href="<c:url value='/'/>">Home</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="content">
Dashboard
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>