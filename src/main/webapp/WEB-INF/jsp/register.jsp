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

	<link rel="stylesheet" href="<%=basePath%>static/css/home.css?v=2" type="text/css" />
    
    <title>注册</title>
</head>
<body>
<div class="wrap">
  <div class="banner-show" id="js_ban_content">
    <div class="cell bns-01">
      <div class="con"> </div>
    </div>
    <div class="cell bns-02" style="display:none;">
      <div class="con"> </div>
    </div>
    <div class="cell bns-03" style="display:none;">
      <div class="con"> </div>
    </div>
  </div>
  <div class="banner-control" id="js_ban_button_box"> <a href="javascript:;" class="left">左</a> <a href="javascript:;" class="right">右</a> </div>
  <script type="text/javascript">
                ;(function(){
                    
                    var defaultInd = 0;
                    var list = $('#js_ban_content').children();
                    var count = 0;
                    var change = function(newInd, callback){
                        if(count) return;
                        count = 2;
                        $(list[defaultInd]).fadeOut(400, function(){
                            count--;
                            if(count <= 0){
                                if(start.timer) window.clearTimeout(start.timer);
                                callback && callback();
                            }
                        });
                        $(list[newInd]).fadeIn(400, function(){
                            defaultInd = newInd;
                            count--;
                            if(count <= 0){
                                if(start.timer) window.clearTimeout(start.timer);
                                callback && callback();
                            }
                        });
                    }
                    
                    var next = function(callback){
                        var newInd = defaultInd + 1;
                        if(newInd >= list.length){
                            newInd = 0;
                        }
                        change(newInd, callback);
                    }
                    
                    var start = function(){
                        if(start.timer) window.clearTimeout(start.timer);
                        start.timer = window.setTimeout(function(){
                            next(function(){
                                start();
                            });
                        }, 8000);
                    }
                    
                    start();
                    
                    $('#js_ban_button_box').on('click', 'a', function(){
                        var btn = $(this);
                        if(btn.hasClass('right')){
                            //next
                            next(function(){
                                start();
                            });
                        }
                        else{
                            //prev
                            var newInd = defaultInd - 1;
                            if(newInd < 0){
                                newInd = list.length - 1;
                            }
                            change(newInd, function(){
                                start();
                            });
                        }
                        return false;
                    });
                    
                })();
            </script>
  <div class="container">
    <div class="register-box">
      <div class="reg-slogan"> 新用户注册</div>
      <div class="reg-form" id="js-form-mobile"> <br>
        <br>
        <div class="cell">
          <label for="js-mobile_ipt">填写手机号</label>
          <input type="text" name="mobile" id="js-mobile_ipt" class="text" maxlength="11" />
        </div>
        <div class="cell">
          <label for="js-mobile_pwd_ipt">设置密码</label>
          <input type="password" name="passwd" id="js-mobile_pwd_ipt" class="text" />
          <input type="text" name="passwd" id="js-mobile_pwd_ipt_txt" class="text" maxlength="20" style="display:none;" />
          <b class="icon-form ifm-view js-view-pwd" title="查看密码" style="display: none"> 查看密码</b> </div>
        <!-- !短信验证码 -->
        <div class="cell vcode">
          <label for="js-mobile_vcode_ipt">输入验证码</label>
          <input type="text" name="code" id="js-mobile_vcode_ipt" class="text" maxlength="6" />
          <a href="javascript:;" id="js-get_mobile_vcode" class="button btn-disabled"> 免费获取验证码</a> </div>
        <div class="bottom"> <a id="js-mobile_btn" href="javascript:;" class="button btn-green"> 立即注册</a></div>
      </div>
      <div class="reg-form" id="js-form-mail" style="display: none;">
        <div class="cell">
          <label for="js-mail_ipt">输入你的常用邮箱</label>
          <input type="text" name="email" id="js-mail_ipt" class="text" />
        </div>
        <div class="cell">
          <label for="js-mail_pwd_ipt">设置密码</label>
          <input type="password" name="passwd" id="js-mail_pwd_ipt" class="text" />
          <input type="text" name="passwd" id="js-mail_pwd_ipt_txt" class="text" maxlength="20" style="display:none;" />
          <b class="icon-form ifm-view js-view-pwd" title="查看密码" style="display: none"> 查看密码</b> </div>
        <!-- !短信验证码 -->
        <div class="cell vcode">
          <label for="js-mail_vcode_ipt">输入验证码</label>
          <input type="text" name="code" id="js-mail_vcode_ipt" class="text" maxlength="4" />
          <img id="js-mail_vcode_img" src="http://passport.115.com/?ct=securimage&ac=email" alt="code" /> <span> <a id="js-mail_vcode_a" href="javascript:;" code_src="http://passport.115.com/?ct=securimage&amp;ac=email"> 换一张</a></span> </div>
        <div class="user-agreement">
          <input type="checkbox" id="js-mail_chk" checked="true" />
          <label for="js-mail_chk">同意<a href="http://115.com/agreement.html" target="_blank">《JS代码网用户服务协议》</a></label>
        </div>
        <div class="bottom"> <a id="js-mail_btn" href="javascript:;" class="button btn-green"> 立即注册</a></div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$(function() {
	
});
</script>
</body>
</html>