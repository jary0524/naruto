<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
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
	
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="<%=basePath%>static/bootstrap-3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>static/css/signin.css">
	
	<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-1.11.3.min.js"></script>
    
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="<%=basePath%>static/bootstrap-3.3.5/js/bootstrap.min.js"></script>
    
    
    
    <title>登录</title>
    <style>.error{color:red;}</style>
</head>
<body class="bg-body">
	<div class="background-container">
		<div style="margin:5px 0 0 10px;">
			<a href="<%=basePath%>login/logout.shtml">点击退出</a>	
		</div>
		
		<div class="signin">
			<div class="signin-head"><img src="<%=basePath%>static/images/head_120.png" alt="" class="img-circle"></div>
			<div class="error">${error}</div>
			<form class="form-signin" role="form" id="loginForm" action="<%-- <%=basePath%>login/login.shtml --%>" method="post">
				<input type="text" name="username" value="<shiro:principal/>" class="form-control" placeholder="用户名" required autofocus />
				<input type="password" name="password" class="form-control" placeholder="密码" required />
				<button id="login" class="btn btn-lg btn-warning btn-block" type="submit">登录</button>
				<label class="checkbox">
					<input type="checkbox" name="rememberMe" checked="checked"> 记住我
				</label>
			</form>
		</div>
	</div>
<script type="text/javascript">
/* $(function() {
	$("#login").click(function() {
		document.getElementById("loginForm").submit();
	});
}); */
</script>
</body>
</html>