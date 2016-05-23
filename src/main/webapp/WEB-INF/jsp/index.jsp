<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<%-- <base href="<%=basePath%>"> --%>
    <link rel="icon" href="<%=basePath%>static/images/icon/favicon.ico">
	
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="<%=basePath%>static/bootstrap-3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>static/css/signin.css">
	
	<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-1.11.3.min.js"></script>
    
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="<%=basePath%>static/bootstrap-3.3.5/js/bootstrap.min.js"></script>
    
    
    
    <title>首页</title>
    <style>.error{color:red;}</style>
</head>
<body class="bg-body">
	<div class="background-container">
	</div>
</body>
</html>