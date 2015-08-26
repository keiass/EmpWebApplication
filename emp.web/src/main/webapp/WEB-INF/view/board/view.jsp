<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
    <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2><a href="<c:url value='#'/>">Board Contents</a></h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li>Board</li>
                        <li class="active"><a href="<c:url value='#'/>">Contents</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
	<div class="content">

	<table class="table">
	<tr>
		<td width="150">작성자 이름</td>
		<td>${board.name}</td>
	</tr>
	<tr>
		<td>제목 </td>
		<td>${board.subject}</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>${board.content}</td>
	</tr>
	<tr>
		<td colspan=2 align="right">
		<a href='<c:url value="/board?list&page=${page}"/>'><button type="button" class="btn btn-danger">목록</button></a>
		<a href='<c:url value="/board?reply=${board.bbsno}&page=${page}"/>'><button type="button" class="btn btn-danger">댓글</button></a>
		<a href='<c:url value="/board?update=${board.bbsno}&page=${page}"/>'><button type="button" class="btn btn-danger">수정</button></a>
		<a href='<c:url value="/board?delete=${board.bbsno}&page=${page}&replynumber=${board.replynumber}"/>'><button type="button" class="btn btn-danger">삭제</button></a>
		</td>
	</tr>
	</table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
