<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>

<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
<section class="slice bg-white">
<div class="col-md-12">                     
                        <div class="tabs-framed">
                            <ul class="tabs clearfix">
                                <li><a href='<c:url value="/manage/searchProductForm.jsp" />'>Name</a></li>
                                <li class="active"><a href='<c:url value="/manage/searchProductByLocationForm.jsp" />' data-toggle="tab">Location</a></li>
							    <li><a href='<c:url value="/manage/searchProductByDeptForm.jsp" />'>Department</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tab-1"> 
                                 <div class="tab-body">
                                    <h2>Search by Location</h2>   
                                      <p class="mb-20"></p>
						 <form action='<c:url value="/manage/Search.do" />' class="form-inline" method="post" class="form-horizontal" id="search-emp-form">
								<div class="control-group" id="location" align="center">               				 
								<input type="text" class="form-control" name="location" size="20" maxlength="80" placeholder="위치를 입력하세요."/>
                             <button class="btn btn-danger" type="submit">Search</button>
                 						<br><br><br><br>
                 			 </div>
                 		 </form>
                 				   </div>
                                 </div>
							</div>
						</div>
</div>
</section>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>