<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/product" />
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
    <h3><fmt:message key="PRODUCT_LIST"/></h3>
    <c:set var="product_id" value="<fmt:message key='PRODUCT_ID'/>"/>${product_id}
	<datatables:table id="products" data="${productList}" row="product"
		theme="bootstrap3" cssClass="table table-striped" pageable="true"
		info="false" export="xls">
		<datatables:column title="PRODUCT_ID" cssStyle="width: 150px;" display="html" property="productId"/>
	</datatables:table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>