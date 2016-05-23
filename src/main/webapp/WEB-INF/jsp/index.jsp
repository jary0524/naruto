<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="/includes/header.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>首页</title>
    
    <!--fonts-->
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<!--//fonts-->
	<link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="<%=basePath%>static/jquery/jquery.mixitup.min.js"></script>
	
	
	<link rel="stylesheet" href="<%=basePath%>static/jquery/swipebox/swipebox.css">
	<script type="text/javascript" src="<%=basePath%>static/jquery/swipebox/jquery.swipebox.min.js"></script> 
	
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="<%=basePath%>static/js/move-top.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/js/easing.js"></script>
	
<script type="text/javascript">
jQuery(document).ready(function($) {
	$(".scroll").click(function(event){		
		event.preventDefault();
		$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
	});
});
</script>

<script type="application/x-javascript">
addEventListener("load", 
		function() {
			setTimeout(hideURLbar, 0); 
		}, 
		false);
	
function hideURLbar(){ 
	window.scrollTo(0,1);
}
</script>
<!-- start-smoth-scrolling -->
</head>
<body class="bg-body">
	
<!-- banner -->
<div id="home" class="banner">
	<div class="container">
		<div class="banner-info text-center">
			<img src="<%=basePath%>static/images/logo.png" alt=""/>
			<h2>WE ARE OMEGA! WE BUILD</h2>
			<h1>BREATHTAKING APPS</h1>
			<h2>WITH GREAT ATTENTION TO USER EXPERIENCE & PERFORMANCE</h2>
			<div class="learnmore"><a href="<%=basePath%>sys/to.shtml?path=file" class="hvr-sweep-to-right button">LEARN MORE</a></div>
			<div class="arrow-icon"><a class="scroll" href="#about"><img src="<%=basePath%>static/images/3.png" alt=" "/></a></div>
		</div>
	</div>
</div>
<!-- //banner -->

<!-- navigation -->
<div class="navigation">
	<div class="wrap">
		<div class="fixed-header">
			<div class="nav-left">
				<a href="#"><img src="<%=basePath%>static/images/logo2.png" alt=""/></a>
			</div>
			<div class="nav-right">
				<span class="menu"><img src="<%=basePath%>static/images/menu.png" alt="" /></span>
					<nav class="cl-effect-1">
						<ul class="nav1">
							<li><a class="scroll" href="#home">HOME</a></li>
							<li><a class="scroll" href="#about">ABOUT</a></li>
							<li><a class="scroll" href="#what-we-do">WHAT WE DO</a></li>
							<li><a class="scroll" href="#team">TEAM</a></li>
							<li><a class="scroll" href="#portfolio">PORTFOLIO</a></li>
							<li><a class="scroll" href="#pricing">PRICING</a></li>
							<li><a class="scroll" href="#clients">CLIENTS</a></li>
							<li><a class="scroll" href="#contact">CONTACT</a></li>
							<li><a href="<%=basePath%>sys/to.shtml?path=register">注册</a></li>
						</ul>
					</nav>
					<!-- script for menu -->
							<script> 
								$( "span.menu" ).click(function() {
								$( "ul.nav1" ).slideToggle( 300, function() {
								 // Animation complete.
								});
								});
							</script>
							<!-- //script for menu -->
					<!-- script-for sticky-nav -->
						<script>
						$(document).ready(function() {
							 var navoffeset=$(".navigation").offset().top;
							 $(window).scroll(function(){
								var scrollpos=$(window).scrollTop(); 
								if(scrollpos >=navoffeset){
									$(".navigation").addClass("fixed");
								}else{
									$(".navigation").removeClass("fixed");
								}
							 });
							 
						});
						</script>
					<!-- /script-for sticky-nav -->
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //navigation -->


<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>


<!-- about-us -->
<div id="about" class="about">
	<div class="container">
		<div class="col-md-7 about-left">
			<h3>We are Omega!</h3>
			<div class="strip"></div>
			<h2>We build breathtaking apps & we never stop learning. That's what we do.</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing. Quisque cingue dui et justo vulputate, eget vehicula lorem fringilla. 
			Vestibulum vitae edor dolor euimod, scelerisque emenim sed, consectetur nibh.</p>
		</div>
		<div class="col-md-5 about-right text-center">
			<img src="<%=basePath%>static/images/5.png" alt="" />
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //about-us -->
<!-- what-we-do -->
<div id="what-we-do" class="what-we-do">
	<div class="container">
		<div class="what-info">
			<h3>What we do</h3>
			<div class="strip"></div>
			<p>We're an energetic and determined team driven by results, committed to helping your business succeed.</p>
		</div>
		<div class="what-grids">
			<div class="col-md-3 what-grid text-center">
				<div class="hand-icon"></div>
				<h3>UNIQUE DESIGN</h3>
				<div class="border"></div>
				<p>Lorem ipsum dolor sit amet, consetetur sadipiscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.</p>
			</div>
			<div class="col-md-3 what-grid text-center">
				<div class="headset-icon"></div>
				<h3>FRIENDLY SUPPORT</h3>
				<div class="border"></div>
				<p>Lorem ipsum dolor sit amet, consetetur sadipiscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.</p>
			</div>
			<div class="col-md-3 what-grid text-center">
				<div class="star-icon"></div>
				<h3>CREATIVE SOLUTION</h3>
				<div class="border"></div>
				<p>Lorem ipsum dolor sit amet, consetetur sadipiscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.</p>
			</div>
			<div class="col-md-3 what-grid text-center">
				<div class="box-icon"></div>
				<h3>OUT OF THE BOX IDEAS</h3>
				<div class="border"></div>
				<p>Lorem ipsum dolor sit amet, consetetur sadipiscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //what-we-do -->
<!-- what-bottom -->
<div class="what-bottom">
	<div class="container">
		<div class="bottom-grids">
			<div class="col-md-3 bottom-grid text-center">
				<div class="love-icon"></div>
				<h3>54 100</h3>
				<p>Lovely clients</p>
			</div>
			<div class="col-md-3 bottom-grid text-center">
				<div class="music-icon"></div>
				<h3>185 200</h3>
				<p>Listened to music</p>
			</div>
			<div class="col-md-3 bottom-grid text-center">
				<div class="award-icon"></div>
				<h3>367</h3>
				<p>Awards & Recongition</p>
			</div>
			<div class="col-md-3 bottom-grid text-center">
				<div class="download-icon"></div>
				<h3>251,060</h3>
				<p>Downloads</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //what-bottom -->
<!-- team -->
<div id="team" class="team">
	<div class="container">
		<div class="team-info">
			<h3>Meet the team</h3>
			<div class="strip"></div>
			<p>Be it any business you run, we can give you an exceptional branding & great marketing strategies.</p>
		</div>
	</div>
		<!-- tabs-box -->
		<div class="sap_tabs">	
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
								<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span><img class="img-responsive" src="<%=basePath%>static/images/1.jpg" alt="" /></span><label class="sed-in"> </label></li>
								<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><img class="img-responsive" src="<%=basePath%>static/images/2.jpg" alt="" /></span><label class="sed-in"> </label></li>
								<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><img class="img-responsive" src="<%=basePath%>static/images/3.jpg" alt="" /></span><label class="sed-in"> </label></li>
								<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><img class="img-responsive" src="<%=basePath%>static/images/4.jpg" alt="" /></span><label class="sed-in"> </label></li>
									<div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span><img class="img-responsive" src="<%=basePath%>static/images/1.jpg" alt="" /></h2>
								<div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
									<div class="team-grid">
										<div class="container">
											<div class="team-arrow1">
												<img src="<%=basePath%>static/images/arrow.png" alt="" />
												
											</div>
											<div class="col-md-7 team-left">
												<h3>John Donga</h3>
												<p class="highlight">Founder</p>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
												labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
												aliquip ex ea commodo consequat. Occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
												anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>
												<ul>
													<li><a href="#" class="fbook"> </a></li>
													<li><a href="#" class="twitt"> </a></li>
													<li><a href="#" class="pinin"> </a></li>
												</ul>
											</div>
											<div class="col-md-5 team-right">
												<div class="bar">
													<p>WordPress (99.9%)</p>
												</div>
												<div class="skills">
														<div class="skill1" style="width:98%"> </div>							
												</div>
												<div class="bar">
													<p>Python (95%)</p>
												</div>
												<div class="skills">
														<div class="skill2" style="width:95%"> </div>							
												</div>
												<div class="bar">
													<p>Adobe illustrator (80%)</p>
												</div>
												<div class="skills">
														<div class="skill3" style="width:80%"> </div>							
												</div>
												<div class="bar">
													<p>Content Development (45%)</p>
												</div>
												<div class="skills">
														<div class="skill4" style="width:45%"> </div>							
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
							    </div>
							    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span><img class="img-responsive" src="<%=basePath%>static/images/2.jpg" alt="" /></h2>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="team-grid">
										<div class="container">
											<div class="team-arrow2">
												<img src="<%=basePath%>static/images/arrow.png" alt="" />
											</div>
											<div class="col-md-7 team-left">
												<h3>Kimberly Thompson</h3>
												<p class="highlight">Co-Founder</p>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
												labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
												aliquip ex ea commodo consequat. Occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
												anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>
												<ul>
													<li><a href="#" class="fbook"> </a></li>
													<li><a href="#" class="twitt"> </a></li>
													
													<li><a href="#" class="pinin"> </a></li>
												</ul>
											</div>
											<div class="col-md-5 team-right">
												<div class="bar">
													<p>WordPress (90%)</p>
												</div>
												<div class="skills">
														<div class="skill1" style="width:90%"> </div>							
												</div>
												<div class="bar">
													<p>Python (85%)</p>
												</div>
												<div class="skills">
														<div class="skill2" style="width:85%"> </div>							
												</div>
												<div class="bar">
													<p>Adobe illustrator (70%)</p>
												</div>
												<div class="skills">
														<div class="skill3" style="width:70%"> </div>							
												</div>
												<div class="bar">
													<p>Content Development (45%)</p>
												</div>
												<div class="skills">
														<div class="skill4" style="width:45%"> </div>							
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>	
								</div>									
							    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span><img class="img-responsive" src="<%=basePath%>static/images/3.jpg" alt="" /></h2>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<div class="team-grid">
										<div class="container">
											<div class="team-arrow3">
												<img src="<%=basePath%>static/images/arrow.png" alt="" />
											</div>
											<div class="col-md-7 team-left">
												<h3>Rico Massimo</h3>
												<p class="highlight">Management</p>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
												labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
												aliquip ex ea commodo consequat. Occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
												anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>
												<ul>
													<li><a href="#" class="fbook"> </a></li>
													<li><a href="#" class="twitt"> </a></li>
													
													<li><a href="#" class="pinin"> </a></li>
												</ul>
											</div>
											<div class="col-md-5 team-right">
												<div class="bar">
													<p>WordPress (98%)</p>
												</div>
												<div class="skills">
														<div class="skill1" style="width:98%"> </div>							
												</div>
												<div class="bar">
													<p>Python (92%)</p>
												</div>
												<div class="skills">
														<div class="skill2" style="width:92%"> </div>							
												</div>
												<div class="bar">
													<p>Adobe illustrator (86%)</p>
												</div>
												<div class="skills">
														<div class="skill3" style="width:86%"> </div>							
												</div>
												<div class="bar">
													<p>Content Development (40%)</p>
												</div>
												<div class="skills">
														<div class="skill4" style="width:40%"> </div>							
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							  <h2 class="resp-accordion" role="tab" aria-controls="tab_item-3"><span class="resp-arrow"></span><img class="img-responsive" src="<%=basePath%>static/images/4.jpg" alt="" /></h2>
							  <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
									<div class="team-grid">
										<div class="container">
											<div class="team-arrow4">
												<img class="img-responsive" src="<%=basePath%>static/images/arrow.png" alt="" />
											</div>
												<div class="col-md-7 team-left">
													<h3>Uku Mason</h3>
													<p class="highlight">Assistant</p>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
													labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.
													Aliquip ex ea commodo consequat. Occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
													anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>
													<ul>
														<li><a href="#" class="fbook"> </a></li>
														<li><a href="#" class="twitt"> </a></li>
														
														<li><a href="#" class="pinin"> </a></li>
													</ul>
												</div>
												<div class="col-md-5 team-right">
													<div class="bar">
														<p>WordPress (99%)</p>
													</div>
													<div class="skills">
															<div class="skill1" style="width:99%"> </div>							
													</div>
													<div class="bar">
														<p>Python (91%)</p>
													</div>
													<div class="skills">
															<div class="skill2" style="width:91%"> </div>							
													</div>
													<div class="bar">
														<p>Adobe illustrator (74%)</p>
													</div>
													<div class="skills">
															<div class="skill3" style="width:74%"> </div>							
													</div>
													<div class="bar">
														<p>Content Development (40%)</p>
													</div>
													<div class="skills">
															<div class="skill4" style="width:40%"> </div>							
													</div>
												</div>
												<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
			</div>
					 <script src="<%=basePath%>static/js/easyResponsiveTabs.js" type="text/javascript"></script>
						<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
							});
						   </script>	
		</div>
</div>
<!-- //team -->
<!-- portfolio -->
<div id="portfolio" class="portfolio">
	<!-- Portfolio Starts Here -->
	<div class="portfolios entertain_box  wow fadeInUp" data-wow-delay="0.4s" id="project">
		<div class="container">
			<div class="portfolio-info">
				<h3>What we've done</h3>
				<div class="strip"></div>
				<p>We combine intelligent thinking with stimulating design to keep your brand engaging and help challenging brands find their clarity.</p>
			</div>
		</div>
					<ul id="filters" class="clearfix">
							<li><span class="filter active" data-filter="app card icon web">All</span></li>
							<li><span class="filter" data-filter="app">Logo Design</span></li>
							<li><span class="filter" data-filter="card">Mobile Development</span></li>
							<li><span class="filter" data-filter="icon">Painting</span></li>
							<li><span class="filter" data-filter="web">Design-3D</span></li>
					</ul>
		
					<div id="portfoliolist">
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/b.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/b.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>Awesome Pie Chart</h3>
								<p>UI Design</p>
								</div></a>
							</div>
						</div>				
						<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/n.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/n.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/></h2>
								<h3>Bull's Eye</h3>
								<p>Abstract</p>
								</div></a>
							</div>
						</div>		
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/f.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/f.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/></h2>
								<h3>Red Logo</h3>
								<p>Logo Design</p>
								</div></a>
							</div>
						</div>				
						<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/k.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/k.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>Man With Head</h3>
								<p>Painting</p>
								</div></a>
							</div>
						</div>	
						<div class="portfolio web mix_all" data-cat="web" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/z.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/z.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>3D Character</h3>
								<p>Design-3D</p>
								</div></a>
							</div>
						</div>			
						<div class="portfolio web mix_all" data-cat="web" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/g.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/g.jpg" />
								<div class="b-wrapper">
									<h2 class="b-animate b-from-left    b-delay03 ">
										<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
									</h2>
									<h3>Bag</h3>
									<p>Design-3D</p>
								</div>
								</a>
							</div>
						</div>
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/l.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/l.jpg" alt=""/>
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>Business Card</h3>
								<p>Design</p>
								</div></a>
							</div>
						</div>
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/m.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/m.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>Ocean Souls Logo</h3>
								<p>Logo Design</p>
								</div></a>
							</div>
						</div>
						<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/x.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/x.jpg" alt=""/>
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>Application</h3>
								<p>Mobile Development</p>
								</div></a>
							</div>
						</div>
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="<%=basePath%>static/images/y.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="<%=basePath%>static/images/y.jpg" alt=""/>
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="<%=basePath%>static/images/e.png" class="zoom" alt=""/>
								</h2>
								<h3>Star Logo For Kids</h3>
								<p>Logo Design</p>
								</div></a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
		
	</div>
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
					</script>
				<!-- Portfolio Ends Here -->
					<script type="text/javascript">
					$(function () {
						var filterList = {
							init: function () {
								// MixItUp plugin
								// http://mixitup.io
								$('#portfoliolist').mixitup({
									targetSelector: '.portfolio',
									filterSelector: '.filter',
									effects: ['fade'],
									easing: 'snap',
									// call the hover effect
									onMixEnd: filterList.hoverEffect()
								});	
							},
							hoverEffect: function () {
								// Simple parallax effect
								$('#portfoliolist .portfolio').hover(
									function () {
										$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
										$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
									},
									function () {
										$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
										$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
									}		
								);				
							}
						};
						// Run the show!
						filterList.init();
					});
					</script>
</div>
<!-- //portfolio -->
<!-- pricing tables -->
<div id="pricing" class="pricing">
	<div class="container">
		<div class="pricing-info">
			<h3>Pricing tables</h3>
			<div class="strip"></div>
			<p>We have flexible pricing options that caters your need. Below is our lightweight pricing table.</p>
		</div>
		<div class="pricing-grids">
			<div class="pricing-grid">
				<div class="basic-plan">
					<h3>BASIC</h3>
					<p><label>$</label><span>299</span>/month</p>
				</div>
				<ul>
					<li>Web Design</li>
					<li>Creative Retouching</li>
					<li>CG Production</li>
					<li>Tech Support</li>
					<li>Branding</li>
				</ul>
				<div class="sign-up"><a href="#">Signup Now</a></div>
			</div>
			<div class="pricing-grid">
				<div class="basic-plan">
					<h3>STANDARD</h3>
					<p><label>$</label> <span>399</span>/month</p>
				</div>
				<ul>
					<li>Web Design</li>
					<li>Creative Retouching</li>
					<li>CG Production</li>
					<li>Tech Support</li>
					<li>Branding</li>
				</ul>
				<div class="sign-up"><a href="#">Signup Now</a></div>
			</div>
			<div class="pricing-grid">
				<div class="basic-plan">
					<h3>PREMIUM</h3>
					<p><label>$</label> <span>499</span>/month</p>
				</div>
				<ul>
					<li>Web Design</li>
					<li>Creative Retouching</li>
					<li>CG Production</li>
					<li>Tech Support</li>
					<li>Branding</li>
				</ul>
				<div class="sign-up"><a href="#">Signup Now</a></div>
			</div>
			<div class="pricing-grid">
				<div class="basic-plan">
					<h3>PROFESSIONAL</h3>
					<p><label>$</label> <span>599</span>/month</p>
				</div>
				<ul>
					<li>Web Design</li>
					<li>Creative Retouching</li>
					<li>CG Production</li>
					<li>Tech Support</li>
					<li>Branding</li>
				</ul>
				<div class="sign-up"><a href="#">Signup Now</a></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //pricing tables -->
<!-- clients -->
<div id="clients" class="clients">
	<div class="container">
		<div class="clients-info">
			<h3>Our Clients</h3>
			<div class="strip"></div>
			<p>Over 5000+ clients in less than 1.5 years including Fortune 500 companies. Some of them are listed below.</p>
		</div>
		<div class="clients-grids">
			<div class="client-grid text-center">
				<img src="<%=basePath%>static/images/7.png" alt="" />
			</div>
			<div class="client-grid text-center">
				<img src="<%=basePath%>static/images/8.png" alt="" />
			</div>
			<div class="client-grid text-center">
				<img src="<%=basePath%>static/images/9.png" alt="" />
			</div>
			<div class="client-grid text-center">
				<img src="<%=basePath%>static/images/10.png" alt="" />
			</div>
			<div class="client-grid text-center">
				<img src="<%=basePath%>static/images/11.png" alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //clients -->
<!-- contact -->
<div id="contact" class="contact">
	<div class="container">
		<div class="contact-info">
			<h3>联系我们</h3>
			<div class="strip"></div>
		</div>
		<div class="contact-form">
			<form id="contactForm" class="easyui-form" method="post" action="<%=basePath%>contactUs/insert.shtml">
				<div class="contact-left">
					<input type="text" name="name" placeholder="Name" required>
					<input type="text" name="email" placeholder="E-mail" required>
					<input type="text" name="title" placeholder="Subject" required>
					
				</div>
				<div class="contact-right">
					<textarea name="message" placeholder="Message" required></textarea>
				</div>
				<div class="clearfix"></div>
				<input id="contactButton" type="submit" value="提交">
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#contactForm").submit(function(e) {  //返回值为false，将阻止表单提交
		var eamil = $().val()
		if (eamil=="") {
			alert("邮箱地址不能为空！");
			return false; //返回值为false，将阻止表单提交
		}
		
	});
});
</script>
<!-- //contact -->
<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="footer-left">
			<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
		<div class="footer-right">
			<ul>
				<li><a href="#" class="fb"> </a></li>
				<li><a href="#" class="twit"> </a></li>
				<li><a href="#" class="googl"> </a></li>
				<li><a href="#" class="linkin"> </a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //footer -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<%@include file="/includes/footer.jsp"%>
</body>
</html>