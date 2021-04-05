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
<table>
	<tr>
	    <td>姓名</td>
	    <td><input id="employeeName" type="text" value="${user.employeeName}"></input></td>
	    <td>性别</td>
	    <td> 
	        <select id="gender" >
	            <option value="1">男</option>   
	            <option value="0">女</option> 
	        </select>
	    </td>
	    <td><a>查询</a>|<a>重置</a>|<a href="${pageContext.request.contextPath}/userModel/insertUser.jsp">新增</a></td>
	</tr>
</table>

<table class="table">
<tr>
<th>名称</th>
<th>性别</th>
<th>操作</th>
<tr>
<c:forEach items="${users}" var="user">
    <tr>
        <td>${user.employeeName}</td>
        <td>
            <c:if test="${user.gender == 1}">男</c:if><c:if test="${user.gender==0}">女</c:if>
        </td>
         <td>
            <a href="${pageContext.request.contextPath}/userModel/selectUser?id=${user.id}">修改</a>|<a href="${pageContext.request.contextPath}/userModel/deleteUser?id=${user.id}">删除</a>
        </td>
    <tr>
	</c:forEach>
</table>
</body>
</html>