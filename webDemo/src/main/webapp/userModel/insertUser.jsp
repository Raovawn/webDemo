<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    	   $("#inputForm input").val("");
    	   $("#inputForm select").val("");	
    }   
</script>
</head>
<body>
<form:form id="inputForm" class="form-horizontal" modelAttribute="user" action="${pageContext.request.contextPath}/userModel/insertUser" method="post">  
<form:hidden path="id"/>
	<table class="table">
	<tr>
	    <td>姓名</td>
	    <td>
	        <form:input path="employeeName"/>  
	    </td>
	</tr>
	<tr>
	    <td>性别</td>
	    <td>
	        <form:select path="gender">
	        	    <form:option value="">未选择</form:option>
	        		<form:option value="1">男</form:option>
	        		<form:option value="0">女</form:option>
	    </form:select>
	  </td>
	</tr>
	<tr>
	    <td colspan="2">
	    		<button type="submit" class="btn btn-large btn-default btn-block">提交</button>
	    </td>
	</tr>
	<tr>
	    <td colspan="2">
	    		<button type="button" class="btn btn-large btn-default btn-block" onclick="resetCondition()">重置</button>
	    </td>
	</tr>
	</table>
</form:form>
</body>
</html>