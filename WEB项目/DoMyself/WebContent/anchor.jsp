<%@page import="java.net.URLDecoder"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  	<li><br><br><br></li>
    <li><a href="index.jsp">主页</a> </li>
    <li><a href="init">我的</a> </li>
    <li><a href="showcase.html">社区</a> </li>
    <li><a href="journal.html">ID<span>BETA</span></a> </li>
    <li><a href="login.jsp">Say Hello</a> </li>
    <li><a href="builder.html">制作人员</a> </li>
  </ul>
  <!-- end hamburger-navigation -->
  <svg class="shape-overlays" viewBox="0 0 100 100" preserveAspectRatio="none">
    <path class="shape-overlays__path" d=""></path>
    <path class="shape-overlays__path" d=""></path>
    <path class="shape-overlays__path" d=""></path>
  </svg>



  <!--logo-->
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
    <ul class="social-bar">
     <li><a href="#">1</a></li>
     <li><a href="#">2</a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">...</a></li>
    </ul>
  <section class="int-hero">
    <div class="video-bg">
      <video src="videos/video.mp4" muted autoplay loop></video>
    </div>
    <!-- end video-bg -->
	<%
		String name = "游客";
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("username")){
					name = cookie.getValue();
				}
			}
		}
	%>

    <!--大标题-->
    <div class="inner">
      <a href="signal.html"><img src="images/default (2).jpg"></a>
      <span><h3><b><a href="signal.html"><%=name %></a></b></h3></span>
      <span><h4>Do.Myself 做自己</h4>
      </span>
      <br/>
      <a href="upload.jsp"><button color="blue">upload</button></a>
      <br/>
      
      
      <span>
      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;
        <select name="selectAge" id="selectAge"
        style="height:36px;font-size:1.3em;border: solid 1px #000; border-radius:5px; background-color:#191919;color:white;
        appearance:none; -moz-appearance:none;-webkit-appearance:none">   
          <option value="1">---色系---</option>   
          <option value="2">浅色系</option>   
          <option value="3">黑色系</option>   
          <option value="4">红色系</option>   
          <option value="5">其他</option>     
        </select> &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;

        <select name="selectAge" id="selectAge"
        style="height:36px;font-size:1.5em;border: solid 1px #000; border-radius:5px; background-color:#191919;color:white;
        appearance:none; -moz-appearance:none;-webkit-appearance:none">  
          <option value="1">---风格---</option>   
          <option value="2">潮流</option>   
          <option value="3">国画</option>   
          <option value="4">写实</option>   
          <option value="5">漫画</option>     
        </select> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;

        <select name="selectAge" id="selectAge"
        style="height:36px;font-size:1.5em;border: solid 1px #000; border-radius:5px; background-color:#191919;color:white;
        appearance:none; -moz-appearance:none;-webkit-appearance:none">  
          <option value="1">---单位---</option>   
          <option value="2">个人</option>   
          <option value="3">工作室</option>      
        </select>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;

        <button type="submit" style="height:25px;font-size:1.1em;border: solid 1px #000; border-radius:5px; background-color:#191919;color:white;">submit</button>
      </span>
    </div>
    <!-- end inner --> 
  </section>
  <!-- end int-hero -->
  <section class="content">
    <div class="works">
      <div class="grid-sizer"></div>
      <!-- end grid-sizer -->
	
	


      <!--图区-->
	<c:forEach items="${pics }" var="i">
      <div class="grid-item-double one">
        <figure class="reveal-effect se2-white wow perspective-box">
        <img src="${i.pictureurl}" alt="ERROR">
          <figcaption><a data-fancybox="gallery" href="${i.pictureurl}">
            <div class="bg-color" data-background="#2095f4"></div>
            <!-- end bg-color -->
            <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
            <!-- end brand -->
            <h5>${i.picturename}</h5>
            
            <small>${i.picturemessage}</small> </a> </figcaption>
        </figure>
        <a href="signalController?mid=${i.messageid }">查看详情</a>
      </div>
	</c:forEach>

      <!-- end grid-item --> 
    </div>
    <!-- end works --> 
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
</body>
</html>
