<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!-- 引入jQuery,引入全局路径 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.8.2.min.js"></script>
<!-- 引入脚本 -->
<script type="text/javascript">
   /*  $(function(){
    	$("#btn").click(function(){
    		alert("你好，雪!");	
    		//延迟1s
    		setTimeout(function(){
    			alert("你好!");	
    		}, 1000);
    	
    	});
    }) */
</script>
</head>

<body>
<!-- 正文 -->
<!-- <button id="btn">点击</button> -->
<a href="insertUser">新增用户</a>
<a href="selectAllUsers">查找所有的用户</a>
</body>
</html>
