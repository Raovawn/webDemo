<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!-- 引入jQuery -->
<script type="text/javascript" src="scripts/jquery-1.8.2.min.js"></script>
<!-- 引入脚本 -->
<script type="text/javascript">
    $(function(){
    	$("#btn").click(function(){
    		alert("你好，雪!");	
    		//延迟1s
    		setTimeout(function(){
    			alert("你好!");	
    		}, 1000);
    	
    	});
    })
</script>
</head>

<body>
<!-- 正文 -->
<button id="btn">点击</button>
</body>
</html>
