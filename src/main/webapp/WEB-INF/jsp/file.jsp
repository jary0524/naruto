<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String uplaodPath = basePath+"upload/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
	<base href="<%=basePath%>">
	
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/bootstrap-3.3.5/css/bootstrap.min.css">
	
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/jary.css">
	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-migrate-1.2.1.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="<%=basePath%>static/bootstrap-3.3.5/js/bootstrap.min.js"></script>
	
	
	<script type="text/javascript" src="<%=basePath%>static/jquery/ajaxfileupload.js"></script>
    
<style type="text/css">
/*a  upload */
.a-upload {
	text-align: center;
    padding: 0px;
    height: 34px;
    width: 200px;
    line-height: 34px;
    position: relative;
    cursor: pointer;
    color: #888;
    background: #fafafa;
    border: 1px solid #ddd;
    border-radius: 4px;
    overflow: hidden;
    display: inline-block;
    *display: inline;
    *zoom: 1
}

.a-upload  input {
    position: absolute;
    font-size: 100px;
    right: -10px;
    top: 0;
    opacity: 0;
    filter: alpha(opacity=0);
    cursor: pointer
}

.a-upload:hover {
    color: #444;
    background: #eee;
    border-color: #ccc;
    text-decoration: none
}
</style>
<script type="text/javascript">
$(function(){
	$("#testJson").click(function(){
		var url = this.href;
		var args = {};
		$.post(url, args, function(data){
			for(var i = 0; i < data.length; i++){
				var id = data[i].id;
				var lastName = data[i].lastName;
				
				alert(id + ": " + lastName);
			}
		});
		return false;
	});
});

var addPrize3 = function(url) {
	var html = '';
	html += '<tr class="imageTextTr">';
	html += '<td ><input type="hidden" name="url" value="'+url+'" class="url form-control" style="width:100%;">';
	html += '<img alt="" height="350" width="350" src="<%=uplaodPath %>'+url+'"></td>';
	html += '<td><textarea name="title" class="title form-control" style="width:200px;height: 100px;" ></textarea></td>';
	html += '<td><a onclick="removeTr3(this);" class="btn btn-danger">删除</a></td>';
	html += '</tr>';
	$("#addtr3").before(html);
};

/*上传文件*/
function upload() {
	//alert(1);
    $.ajaxFileUpload({
    	url: "<%=basePath%>/file/uploadFiles",
        secureuri: false,
        fileElementId: 'uploadFile',
        dataType: 'json',
        data: {//加入的文本参数  
            "commodityId": $('#commodityId').val()
        },
        success: function(data, status) {
        	if (data.status==1) {
        		//alert(data.dataJson);
        		var fileList = jQuery.parseJSON(data.dataJson);
        		for (var i in fileList) {
            		//alert(fileList[i]);
            		addPrize3(fileList[i]);
        		}
			} else {
				alert(data.msg);
			}
        }
    });
}
</script>
</head>
<body>


	<!-- what-we-do -->
	<div id="what-we-do" class="what-we-do">
		<div class="container">
			<div class="what-info">
				<h3>What we do</h3>
				
                <div>
					<label>图文说明</label>
					<a href="javascript:;" class="a-upload">
						<input type="file" id="uploadFile" name="uploadFile" multiple="multiple" onchange="upload();" class="btn">点击这里上传图片
					</a>
					<br/>
					<table id="imageTexts" class="table table-bordered">
                      <tr>
                          <th class="width_30">图片</th>
                          <th class="width_50">说明</th>
                          <th class="width_20">操作</th>
                      </tr>
                      <tr id="addtr3">
                          <td colspan="5"></td>
                      </tr>                            
                  </table>
                </div>
			</div>
		</div>
	</div>
	<!-- //what-we-do -->
	
	
	
	
	
	<br><br>
	
	<a href="emps">List All Employees</a>
	<br><br>
	
	<a href="<%=basePath%>testJson" id="testJson">Test Json</a>
	<br><br>
	
	<form action="<%=basePath%>testHttpMessageConverter" method="POST" enctype="multipart/form-data">
		File: <input type="file" name="file"/>
		Desc: <input type="text" name="desc"/>
		<input type="submit" value="Submit"/>
	</form>
	
	<br><br>
	
	<a href="<%=basePath%>testResponseEntity">Test ResponseEntity</a>
	
	<!--  
		关于国际化:
		1. 在页面上能够根据浏览器语言设置的情况对文本(不是内容), 时间, 数值进行本地化处理
		2. 可以在 bean 中获取国际化资源文件 Locale 对应的消息
		3. 可以通过超链接切换 Locale, 而不再依赖于浏览器的语言设置情况
		
		解决:
		1. 使用 JSTL 的 fmt 标签
		2. 在 bean 中注入 ResourceBundleMessageSource 的示例, 使用其对应的 getMessage 方法即可
		3. 配置 LocalResolver 和 LocaleChangeInterceptor
	-->	
	<br><br>
	<a href="<%=basePath%>i18n">I18N PAGE</a>
	
	<br><br>
	<a href="<%=basePath%>testExceptionHandlerExceptionResolver?i=10">Test ExceptionHandlerExceptionResolver</a>
	
	<br><br>
	<a href="<%=basePath%>testResponseStatusExceptionResolver?i=10">Test ResponseStatusExceptionResolver</a>
	
	<br><br>
	<a href="<%=basePath%>testDefaultHandlerExceptionResolver">Test DefaultHandlerExceptionResolver</a>
	
	<br><br>
	<a href="<%=basePath%>testSimpleMappingExceptionResolver?i=2">Test SimpleMappingExceptionResolver</a>
</body>
</html>