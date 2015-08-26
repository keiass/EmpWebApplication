<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html>

<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>

<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
    <h2>검색 결과</h2>
	<datatables:table id="products" data="${productList}" row="product"
		theme="bootstrap3" cssClass="table table-striped" pageable="true"
		info="false" export="xls">
		<datatables:column title="제품번호" cssStyle="width: 150px;"
			display="html" property="productId"/>
		<datatables:column title="바코드" property="barcode" cssStyle="width: 200px;" />
		<datatables:column title="제품명" property="productName"/>
		<datatables:column title="담당자" property="userId" />
		<datatables:column title="위치" property="location" />
		<datatables:export type="xls" cssClass="btn btn-default" cssStyle="height: 25px;" />
	</datatables:table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>