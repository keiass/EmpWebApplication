<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jk" uri="/WEB-INF/tld/taglib.tld" %>
<%@ taglib prefix="jk2" tagdir="/WEB-INF/tags" %>
<html>

<jsp:include page="/include/staticFiles.jsp"/>

<body>
<div class="container">
<jsp:include page="/include/bodyHeader.jsp"/>
    <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2><a href="<c:url value='/board/Board.do?action=list'/>">Board</a></h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li>Board</li>
                        <li class="active"><a href="<c:url value='/board/Board.do?action=list'/>">List</a></li>
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
	
		<thead><td>No</td><td>작성자</td><td>제목</td><td>조회수</td></thead>
	
	<c:forEach var="board" items="${lists}">
	<tr>
		<td>${board.seq}</td>
		<td>${board.name}</td>
		<td>
		<jk2:reply replynum="${board.replynumber}" replystep="${board.replystep}"/>
		<a href='<c:url value="/board/Board.do?action=view&bbsno=${board.bbsno}&page=${page}"/>'>
		${board.subject}</a>
		</td>
		<td>${board.readcount}</td>
	</tr>
	</c:forEach>
	</table>
	<center><nav><ul class="pagination"><li><jk:paging total="totalPageCount" now="page"/></li></ul></nav></center>
	<div align="right"><a href='<c:url value="/board/Board.do?action=write"/>'><button type="button" class="btn btn-danger">글쓰기</button></a></div>
</div>
</div></div></div></div>
</section>
</div>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>
