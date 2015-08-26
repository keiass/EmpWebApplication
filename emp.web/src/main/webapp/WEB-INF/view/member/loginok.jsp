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
	<h2>${userid}님 반갑습니다.</h2>
    <h3>${userid}님 소유 물품목록입니다.</h3>
	<datatables:table id="products" data="${productList}" row="product"
		theme="bootstrap3" cssClass="table table-striped" pageable="true"
		info="false" export="xls">
		<datatables:column title="제품번호" cssStyle="width: 150px;"
			display="html" property="productId"/>
		
	</datatables:table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>