<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SpringMVC用户列表</title>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<!--  
	SpringMVC 处理静态资源:
	1. 为什么会有这样的问题:
	优雅的 REST 风格的资源URL 不希望带 .html 或 .do 等后缀
	若将 DispatcherServlet 请求映射配置为 /, 
	则 Spring MVC 将捕获 WEB 容器的所有请求, 包括静态资源的请求, SpringMVC 会将他们当成一个普通请求处理, 
	因找不到对应处理器将导致错误。
	2. 解决: 在 SpringMVC 的配置文件中配置 <mvc:default-servlet-handler/>
-->
<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".delete").click(function(){
			var href = $(this).attr("href");
			$("form").attr("action", href).submit();			
			return false;
		});
	});
</script>
</head>
<body>

	<div>
		<a href="<%=basePath %>sys/export.shtml">导出</a>
	</div>
	<form action="" method="POST">
		<input type="hidden" name="_method" value="DELETE"/>
	</form>
	
	<c:if test="${empty requestScope.userList }">
		没有任何员工信息.
	</c:if>
	<c:if test="${!empty requestScope.userList }">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>ID</th>
				<th>LoginId</th>
				<th>Nick</th>
				<th>Gender</th>
				<th>Status</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			
			<c:forEach items="${requestScope.userList }" var="user">
				<tr>
					<td>${user.userId }</td>
					<td>${user.account }</td>
					<td>${user.nick }</td>
					<td>${user.gender == 1 ? 'Male' : 'Female' }</td>
					<td>${user.status == 1 ? '正常' : '异常' }</td>
					<td><a class="edit" href="user/${user.userId}">Edit</a></td>
					<td><a class="delete" href="user/${user.userId}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
</body>
</html>