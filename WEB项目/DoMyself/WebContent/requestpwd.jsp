<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Anchor | Freelancer & Creative Agency Portfolio</title>
<meta name="author" content="Themezinho">
<meta name="description" content="Anchor | Freelancer & Creative Agency Portfolio">
<meta name="keywords" content="creative, works, showcase, portfolio, highlight, projects, parallax, agency, digital, studio, css, animation, transition, svg, html, css">
 


<!-- FAVICON FILES -->
<link href="ico/apple-touch-icon-144-precomposed.png" rel="apple-touch-icon" sizes="144x144">
<link href="ico/apple-touch-icon-114-precomposed.png" rel="apple-touch-icon" sizes="114x114">
<link href="ico/apple-touch-icon-72-precomposed.png" rel="apple-touch-icon" sizes="72x72">
<link href="ico/apple-touch-icon-57-precomposed.png" rel="apple-touch-icon">
<link href="ico/favicon.png" rel="shortcut icon">

<!-- CSS FILES -->
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/hamburger-menu.css">
<link rel="stylesheet" href="css/odometer.min.css">  
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/fancybox.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>


 

<div class="preloader"> <img src="images/preloader.gif" alt="Image">
  <ul class="text-rotater">
    <li>稍等</li>
    <li>...加载中...</li>
    <li>即将完成</li>
  </ul>
</div>
<!-- end preloader -->
<div class="transition-overlay"></div>
<!-- end transition-overlay -->
<main>




  <ul class="hamburger-navigation">
  <li><br></li>
    <li><a href="index.jsp">主页</a></li>
    <li><a href="anchor.jsp">我的</a> </li>
    <li><a href="showcase.jsp">社区</a> </li>
    <li><a href="journal.jsp">ID<span>BETA</span></a> </li>
    <li><a href="login.jsp">Say Hello</a> </li>
    <li><a href="builder.html">制作人员</a> </li>
  </ul>
<!-- end hamburger-navigation -->
<svg class="shape-overlays" viewBox="0 0 100 100" preserveAspectRatio="none">
  <path class="shape-overlays__path" d=""></path>
  <path class="shape-overlays__path" d=""></path>
  <path class="shape-overlays__path" d=""></path>
</svg>




<header class="header">
  <div class="logo"><img src="images/logo.png" alt="Image"></div>
  <!-- end logo --> 
  <span class="phone"><h3></h3></span>
  <div class="hamburger" id="hamburger">
    <div class="hamburger__line hamburger__line--01">
      <div class="hamburger__line-in hamburger__line-in--01"></div>
    </div>
    <div class="hamburger__line hamburger__line--02">
      <div class="hamburger__line-in hamburger__line-in--02"></div>
    </div>
    <div class="hamburger__line hamburger__line--03">
      <div class="hamburger__line-in hamburger__line-in--03"></div>
    </div>
    <div class="hamburger__line hamburger__line--cross01">
      <div class="hamburger__line-in hamburger__line-in--cross01"></div>
    </div>
    <div class="hamburger__line hamburger__line--cross02">
      <div class="hamburger__line-in hamburger__line-in--cross02"></div>
    </div>
  </div>
  <!-- end hamburger -->
  <div class="equalizer"> <span></span> <span></span> <span></span> <span></span> </div>
  <!-- end equalizer -->
</header>
<section class="int-hero">
  <div class="video-bg">
    <video src="videos/video.mp4" muted autoplay loop></video>
  </div>
  <!-- end video-bg -->




  <div class="inner">
    <h1><b>HELLO!</b></h1>
  </div>
    <div class="inner">
    <h2>欢迎来到Do Myself</h2>
  </div>
  <!-- end inner --> 
</section>
<!-- end int-hero -->
<section class="content">
<div class="contact">



<div class="container">
  <div class="row justify-content-md-center">
    <div class="col-12 wow fadeInUp">
      <div class="titles">
        <h5></h5>
        <h2>找回密码</h2>
      </div>
      
        
  	   <div align="center">
	   	 <c:if test="${not empty message }">
		      <b><font color="red" >
		     	 <% out.print(request.getAttribute("message")); %>
		     	 </font>
		      </b>
	     </c:if>
      </div>
      <%
      	String email = request.getParameter("email");
      	out.print(email);
      
      	Cookie cookie = new Cookie("email",email);
      	response.addCookie(cookie);
      
      %>
      
      <!-- end titles --> 
    </div>
    <!-- end col-12 -->
  </div>
  <!-- end row -->
  <div class="row justify-content-md-center">
    <div class="col-md-8 col-sm-12 col-12 wow fadeIn">
      <form class="row inner" method="post" action="repassword">
		
        <!-- end form-group -->
        <div class="form-group col-12" >
          <label><span>密 码</span></label>
          <input type="password" name="password" id="password" required>
        </div>
        <div class="form-group col-12" >
          <label><span>确 认 密 码</span></label>
          <input type="password" name="repassword" id="repassword" required>
        </div>
        <!-- end form-group -->
        <div class="form-group col-12 text-center">
          <button id="chuce" type="submit" name="submit">确 认 修 改</a></button>
        </div>
        <!-- end form-group -->

      </form>
      <!-- end form --> 
    </div>
    <!-- end col-8 -->




    <!--提交成功或失败-->
    <div class="col-md-8 col-sm-12 col-12">
        <div id="success" class="alert alert-success" role="alert">Successfully!</div>
        <!-- end success -->
        <div id="error" class="alert alert-danger" role="alert"> Something went wrong, try again. </div>
        <!-- end error --> 
      </div>
      <!-- end col-8 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container -->
  <div class="map" id="map"></div>
  <!-- end map --> 
</div>
<!-- end contact -->
</section>
<!-- end content -->
</main>
<div class="footer-spacing"></div>
<!-- end footer-spacing -->
<footer class="footer"> <img src="images/logo.png" alt="Image">
  <h2>Do . Myself</h2>


  <div class="footer-bar"> <span class="pull-left"></span> <span class="pull-right">Site created by Stefan</span> </div>
  <!-- end footer-bar --> 
</footer>
<!-- end footer -->
<audio id="link" src="audio/link.mp3" preload="auto"></audio>

<!-- JS FILES --> 
<script src="js/jquery.min.js"></script> 
<script>
	
		(function($) {
			$(window).load(function(){
				$("body").addClass("page-loaded");	
			});
		})(jQuery)
</script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/swiper.min.js"></script> 
<script src="js/fancybox.min.js"></script> 
<script src="js/jquery.stellar.js"></script> 
<script src="js/odometer.min.js"></script> 
<script src="js/hamburger.min.js"></script> 
<script src="js/easings.js"></script> 
<script src="js/isotope.min.js"></script> 
<script src="js/wow.min.js"></script> 
<script src="js/perspective.min.js"></script> 
<script src="js/scripts.js"></script> 
<script src="js/contact.form.min.js"></script> 
<script src="js/jquery.form.min.js"></script> 
<script src="js/jquery.validate.min.js"></script> 
<script src="http://ditu.google.cn/maps/api/js?sensor=false"></script> 
<script src="js/googlemaps.min.js"></script>
</body>
</html>
