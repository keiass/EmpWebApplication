<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>
<h3>Emp List</h3>
<datatables:table id="emps" data="${empList}" row="emp" theme="bootstrap2" cssClass="table table-striped" pageable="true" export="pdf">
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
<%--
<c:forEach var="emp" items="${empList}">
${emp.empno}, ${emp.ename}, ${emp.job}<br>
</c:forEach>
 --%>
</body>
</html>