<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="/assets/includes/header.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8" />

	<title>Light Bootstrap Dashboard by Creative Tim</title>
</head>
<body> 

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">    
    
    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->
    
    
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Creative Tim
                </a>
            </div>
                       
            <ul class="nav">
                <li>
                    <a href="dashboard.html">
                        <i class="pe-7s-graph"></i> 
                        <p>Dashboard</p>
                    </a>            
                </li>
                <li>
                    <a href="user.html">
                        <i class="pe-7s-user"></i> 
                        <p>User Profile</p>
                    </a>
                </li> 
                <li>
                    <a href="table.html">
                        <i class="pe-7s-note2"></i> 
                        <p>Table List</p>
                    </a>        
                </li>
                <li class="active">
                    <a href="typography.html">
                        <i class="pe-7s-news-paper"></i> 
                        <p>Typography</p>
                    </a>        
                </li>
                <li>
                    <a href="icons.html">
                        <i class="pe-7s-science"></i> 
                        <p>Icons</p>
                    </a>        
                </li>
                <li>
                    <a href="maps.html">
                        <i class="pe-7s-map-marker"></i> 
                        <p>Maps</p>
                    </a>        
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="pe-7s-bell"></i> 
                        <p>Notifications</p>
                    </a>        
                </li>
            </ul> 
    	</div>
    </div>
    
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">    
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Typography</a>
                </div>
                <div class="collapse navbar-collapse">       
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret"></b>
                                    <span class="notification">5</span>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li> 
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               Account
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Dropdown
                                    <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                              </ul>
                        </li>
                        <li>
                            <a href="#">
                                Log out
                            </a>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
                     
                     
        <div class="content">
            <div class="container-fluid">
                <div class="row">                   
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Light Bootstrap Table Heading</h4>
                                <p class="category">Created using Roboto Font Family</p>
                            </div>
                            <div class="content">
                                
                                <div class="typo-line">
                                    <h1><p class="category">Header 1</p>Light Bootstrap Table Heading </h1>
                                </div>
                                
                                    <div class="typo-line">
                                    <h2><p class="category">Header 2</p>Light Bootstrap Table Heading</h2>
                                </div>
                                <div class="typo-line">
                                    <h3><p class="category">Header 3</p>Light Bootstrap Table Heading</h3>
                                </div>
                                <div class="typo-line">
                                    <h4><p class="category">Header 4</p>Light Bootstrap Table Heading</h4>
                                </div>
                                <div class="typo-line">
                                    <h5><p class="category">Header 5</p>Light Bootstrap Table Heading</h5>
                                </div>
                                 <div class="typo-line">
                                    <h6><p class="category">Header 6</p>Light Bootstrap Table Heading</h6>
                                </div>
                                <div class="typo-line">
                                    <p><span class="category">Paragraph</span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.</p>
                                </div>
                                <div class="typo-line">
                                    <p class="category">Quote</p>      
                                    <blockquote> 
                                     <p>
                                     Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.
                                     </p>
                                     <small>
                                     Steve Jobs, CEO Apple
                                     </small>
                                    </blockquote>
                                </div>
                                
                                <div class="typo-line">
                                    <p class="category">Muted Text</p>
                                    <p class="text-muted">            
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.
                                    </p>
                                </div> 
                                <div class="typo-line">
                                    <!-- 
                                     there are also "text-info", "text-success", "text-warning", "text-danger" clases for the text 
                                     -->
                                    <p class="category">Coloured Text</p>
                                    <p class="text-primary">            
                                        Text Primary - Light Bootstrap Table Heading and complex bootstrap dashboard you've ever seen on the internet.
                                    </p>
                                    <p class="text-info">            
                                        Text Info - Light Bootstrap Table Heading and complex bootstrap dashboard you've ever seen on the internet.
                                    </p>
                                    <p class="text-success">            
                                        Text Success - Light Bootstrap Table Heading and complex bootstrap dashboard you've ever seen on the internet.
                                    </p>
                                    <p class="text-warning">            
                                        Text Warning - Light Bootstrap Table Heading and complex bootstrap dashboard you've ever seen on the internet.
                                    </p>
                                    <p class="text-danger">            
                                        Text Danger - Light Bootstrap Table Heading and complex bootstrap dashboard you've ever seen on the internet.
                                    </p>
                                </div> 
                                
                                <div class="typo-line">
                                    <h2><p class="category">Small Tag</p>Header with small subtitle <br><small>".small" is a tag for the headers</small> </h2>
                                </div> 
                    
                                   
                            </div>
                        </div>
                    </div>                     
                                 
                </div>                    
            </div>
        </div>
        
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; 2015 <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>
        
        
    </div>   
</div>


<%@include file="/assets/includes/footer.jsp"%>

</body>
    
</html>