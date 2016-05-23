<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/demo/demo.css">
	<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.easyui.min.js"></script>
</head>
<body>
	
	<h2>Basic Panel</h2>
	<p>The panel is a container for other components or elements.</p>
	
	<div style="margin:20px 0 10px 0;">
		<a class="easyui-linkbutton" onclick="javascript:$('#p').panel('open')">Open</a>
		<a class="easyui-linkbutton" onclick="javascript:$('#p').panel('close')">Close</a>
	</div>
	
	<div id="p" class="easyui-panel" title="Basic Panel" style="width:700px;height:200px;padding:10px;">
		<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
		<ul>
			<li>easyui is a collection of user-interface plugin based on jQuery.</li>
			<li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
			<li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
			<li>complete framework for HTML5 web page.</li>
			<li>easyui save your time and scales while developing your products.</li>
			<li>easyui is very easy but powerful.</li>
		</ul>
	</div>
	
</body>
</html>