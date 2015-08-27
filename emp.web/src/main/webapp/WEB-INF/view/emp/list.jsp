<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
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
                <h2><a href="<c:url value='/emp'/>">Emp</a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Emp</li>
                    <li class="active"><a href="<c:url value='/emp'/>">List</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="content">
  <datatables:table id="emps" data="${empList}" row="emp" theme="bootstrap3" cssClass="table table-striped" pageable="true" export="pdf">
	 <datatables:column title="EMPNO" cssStyle="width: 150px;" display="html">
	    <c:out value="${emp.empno}"/>
	 </datatables:column>
	 <datatables:column title="ENAME" property="ename" cssStyle="width: 200px;"/>
	 <datatables:column title="JOB" property="job"/>
	 <datatables:column cssClass="pc" cssCellClass="pc" title="MANAGER" property="mgr"/>
	 <datatables:column cssClass="pc" cssCellClass="pc" title="HIREDATE" property="hiredate"/>
	 <datatables:column cssClass="pc" cssCellClass="pc" title="SALARY" property="sal"/>
	 <datatables:column cssClass="pc" cssCellClass="pc" title="COMMISSION" property="comm"/>
	 <datatables:column title="DEPTNO" property="deptno" cssStyle="width: 100px;"/>
	 <datatables:export type="pdf" cssClass="btn pc" cssStyle="height: 25px;" />
	 <datatables:export type="xls" cssClass="btn pc" cssStyle="height: 25px;" />
	 <datatables:export type="csv" cssClass="btn pc" cssStyle="height: 25px;" />
  </datatables:table>
</div>
</div>
<%--
<c:forEach var="emp" items="${empList}">
${emp.empno}, ${emp.ename}, ${emp.job}<br>
</c:forEach>
 --%>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>