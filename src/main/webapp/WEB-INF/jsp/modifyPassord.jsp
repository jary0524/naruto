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
	<link rel="stylesheet" href="<%=basePath%>static/easyui/themes/default/easyui.css">
	<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.easyui.min.js"></script>
    <title>登录</title>
    <style>.error{color:red;}</style>
</head>
<body>
	<div style="margin:20px 0;"></div>
	<a href="<%=basePath%>login/index.shtml">首页</a>
	<div class="easyui-panel" title="修改密码" style="width:400px;padding:30px 70px 20px 70px">
		<div class="error">${error}</div>
		<form id="updateForm" action="<%=basePath%>login/modifyPassord.shtml" method="post">
			<input type="hidden" name="account" value="<shiro:principal/>" />
			<div style="margin-bottom:10px">
				<input name="password" value="" class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'原密码',iconCls:'icon-man',iconWidth:38">
			</div>
			<div style="margin-bottom:10px">
				<input name="newPassword" value="" class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'新密码',iconCls:'icon-man',iconWidth:38">
			</div>
			<div style="margin-bottom:10px">
				<input name="newPassword2" value="" class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'再次输入新密码',iconCls:'icon-man',iconWidth:38">
			</div>
			<div>
				<a id=modifyPassord class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
					<span style="font-size:14px;">修改</span>
				</a>
			</div>
		</form>
	</div>
<script type="text/javascript">
$(function() {
	$("#modifyPassord").click(function() {
		document.getElementById("updateForm").submit();
	});
});
</script>
</body>
</html>