<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<base href="<%=basePath%>">
	
	<title>SpringMVC 请求测试</title>
	
</head>
<body>
	cookies:<a href="global/language.shtml?language=zh">中文</a> | <a href="global/language.shtml?language=en">英文</a><br/><br/><br/>
	
	session:<a href="global/test.shtml?langType=zh">中文</a> | <a href="global/test.shtml?langType=en">英文</a><br/><br/><br/>
	
	request:<a href="global/changeLocale.shtml?locale=zh_CN">中文</a> | <a href="global/changeLocale.shtml?locale=en_US">英文</a><br/>
	
	    下面展示的是后台获取的国际化信息：<br/>
	    ${username}<br/>
	    ${password}<br/>
	
	    下面展示的是视图中直接绑定的国际化信息：<br/>
	    <spring:message code="i18n.username"/>:
	    <spring:eval expression="contentModel.username"></spring:eval><br/>
	    <spring:message code="i18n.password"/>:
	    <spring:eval expression="contentModel.password"></spring:eval><br/>
</body>
</html>