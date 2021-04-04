<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入 Bootstrap -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
<title>Insert title here</title>
</head>
<body>
<table class="table">
<tr>
<th>ID</th>
<th>名称</th>
<th>性别</th>
<th>操作</th>
<tr>
<c:forEach items="${users}" var="user">
    <tr>
        <td>${user.id}</td>
        <td>${user.employeeName}</td>
        <td>
            <c:if test="${user.gender == 1}">男</c:if><c:if test="${user.gender==0}">女</c:if>
        </td>
         <td>
            <a>修改</a>|<a>删除</a>
        </td>
    <tr>
	</c:forEach>
</table>
<!-- <ul class="pagination">
	<li><a href="#">&laquo;</a></li>
	<li><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#">5</a></li>
	<li><a href="#">&raquo;</a></li>
</ul> -->
</body>
</html>