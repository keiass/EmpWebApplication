<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" %>
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
                    <h2>Board</h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li>Board</li>
                        <li class="active">Write</li>
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
<div class="content">
<form action='<c:url value="/board?reply"/>' method="post" class="form-inline">
<table class="table">
<tr>
	<td width="200px">작성자이름</td>
	<td><input type="text" class="form-control" name="name" value="${board.name}"></td>
</tr>
<tr>
	<td>작성자 이메일</td>
	<td><input type="text" class="form-control" name="email" value="${board.email}"></td>
</tr>
<tr>
	<td>비밀번호</td>
	<td><input type="password" class="form-control" name="password" value="${board.password}"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type="text" class="form-control" name="subject" size="50" value="${board.subject}"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea cols="100" class="form-control" rows="10" name="content">${board.content}</textarea></td>
</tr>
<tr>
	<td colspan="2">
	<input type="hidden" name="action" value="${next}">
	<input type="hidden" name="bbsno" value="${board.bbsno}">
	<input type="hidden" name="masterid" value="${board.masterid}">
	<input type="hidden" name="replynumber" value="${board.replynumber}">
	<input type="hidden" name="replystep" value="${board.replystep}">
	<input type="hidden" name="page" value="${page}">
	<div align="right"><input type="submit" class="btn btn-danger" value=" 저 장 "> <input type="reset" class="btn btn-danger" value=" 취 소 "></div>
	</td>
</tr>
</table>
</form>
</div>
</div></div></div></div></div></section></div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>