<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入 Bootstrap -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>

<title>Insert title here</title>
<!-- 引入jQuery,引入全局路径 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.8.2.min.js"></script>
<!-- 引入脚本 -->
<script type="text/javascript"> 
    function resetCondition(){
    	   $("#searchForm input").val("");
    	   $("#searchForm select").val("");
    	   $("#searchForm").submit();    	
    }   
</script>
</head>
<body>
<form:form id="searchForm" class="form-search" modelAttribute="user" action="${pageContext.request.contextPath}/userModel/selectAllUsers" method="post">
    <span>姓名</span>
    <form:input path="employeeName"/>
    <span>性别</span>
    <form:select path="gender">
        <form:option value="">未选择</form:option>
        <form:option value="1">男</form:option>
        <form:option value="0">女</form:option>
    </form:select>
    <div class="btn-group pull-right">
		<button type="submit" class="btn btn-default btn-sm">查询</button>
	    <button type="button" class="btn btn-default btn-sm" onclick="resetCondition()">重置</button>
		<a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/userModel/selectUser">新增</a> 
	</div>
</form:form>
<table class="table table-bordered">
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
		         <div class="btn-group">
					 <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/userModel/selectUser?id=${user.id}">修改</a>
					 <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/userModel/deleteUser?id=${user.id}">删除</a>
				</div>		           
		        </td>
		    <tr>
		</c:forEach>
</table>
</body>
</html>