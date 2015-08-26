<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jk" uri="/WEB-INF/tlds/taglib.tld" %>
<%@ taglib prefix="jk2" tagdir="/WEB-INF/tags" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
    <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2><a href="<c:url value='/board?list'/>">Board</a></h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li>Board</li>
                        <li class="active"><a href="<c:url value='/board?list'/>">List</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

  <section class="slice bg-white">
   <div class="wp-section">
				<div class="container">
					<div class="row">
						<div class="container">
<div class="box-content">
    <table class="table table-bordered">
	
		<thead><tr><td>No</td><td class="pc">bbsno</td><td>작성자</td><td>제목</td><td class="pc">조회수</td></tr></thead>
	<c:set var="seq" value="0" scope="page" />
	<c:forEach var="board" items="${boardList}">
	<tr>
		<c:set var="seq" value="${seq + 1}" scope="page"/>
		<td class="pc">${seq}</td>
		<td>${board.bbsno}</td>
		<td>${board.name}</td>
		<td>
		<jk2:reply replynum="${board.replynumber}" replystep="${board.replystep}"/>
		<a href='<c:url value="/board?view=${board.bbsno}&&page=${page}"/>'>
		${board.subject}</a>
		</td>
		<td class="pc">${board.readcount}</td>
	</tr>
	</c:forEach>
	</table>
	<nav class=.center><ul class="pagination"><li><jk:paging total="totalPageCount" now="page"/></li></ul></nav>
	<div align="right"><a href='<c:url value="/board?write"/>'><button type="button" class="btn btn-danger">글쓰기</button></a></div>
</div>
</div></div></div></div>
</section>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
