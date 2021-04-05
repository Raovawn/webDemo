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
<!-- 引入jQuery,引入全局路径 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.8.2.min.js"></script>
<!-- 引入脚本 -->
<script type="text/javascript">
    $(function(){
	    	$("#submit").click(function(){
	    		var user = {id:$("#employeeId").val(),employeeName:$("#employeeName").val(),gender:$("#gender").val()};
	    		$.post("insertUser",
  				  user,
  				  function(data){
  					 location.href="selectAllUsers"; 				    
  				  });
	    	});
    }) 
</script>
</head>
<body>
<table class="table">
<c:if test="${user.id != null}">
<tr>
  <td>ID</td>
  <td>
      <input id="employeeId" type="text" value="${user.id}" readonly="readonly"></input>
  </td>
</tr>
</c:if>
<tr>
  <td>姓名</td>
  <td>
      <input id="employeeName" type="text" value="${user.employeeName}"></input>
  </td>
</tr>
<tr>
  <td>性别</td>
  <td>
      <select id="gender" >
          <option value="1">男</option>
          <c:if test="${user.gender == 0}">
              <option value="0" selected = "selected">女</option>
          </c:if>
          <c:if test="${user.gender == null || user.gender == 1}">
              <option value="0">女</option>
          </c:if>
      </select>
  </td>
</tr>
<tr>
  <td colspan="2">
      <input type="submit" id="submit" value="提交"/>
  </td>
</tr>
</table>
</body>
</html>