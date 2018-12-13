<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
  <section class="slider">
    <div class="swiper-container">
      <div class="swiper-wrapper">

      <!--顶端图片及内容-->
        <div class="swiper-slide bg-image" data-background="images/awp侧.png" data-stellar-background-ratio="0.5">
          <div class="inner">
            <h4 data-swiper-parallax="-600"><b>社区</b></h4>
            <h2 data-swiper-parallax="-400">Do . Myself </h2>
            <p data-swiper-parallax="-200"><h3>最近肝出来的AWP图</h3></p>
            <a href="#" class="link"><h4>发现</h4></a> 
          </div>
          <!-- end inner --> 
        </div>
        <!-- end swiper-slide -->


        <div class="swiper-slide bg-image" data-background="images/awp俯.png" data-stellar-background-ratio="0.5">
          <div class="inner">
            <h4 data-swiper-parallax="-600"><b>我的作品</b></h4>
            <h2 data-swiper-parallax="-400">My . Produce</h2>
            <p data-swiper-parallax="-200"><h3>还是AWP</h3></p>
            <a href="#" class="link"><h4>查看</h4></a> 
          </div>
          <!-- end inner --> 
        </div>
        <!-- end swiper-slide -->



        <div class="swiper-slide bg-image" data-background="images/awp头.png" data-stellar-background-ratio="0.5">
          <div class="inner">
            <h5 data-swiper-parallax="-600"><b>ID . Now</b></h5>
            <h2 data-swiper-parallax="-400">CLothes </h2>
            <p data-swiper-parallax="-200"><h3>马上设计一个AWP吧！</h3></p>
            <a href="#" class="link"><h4>ID</h4></a> 
          </div>
          <!-- end inner --> 
        </div>
        <!-- end swiper-slide --> 
      </div>
      <!-- Add Pagination -->
      <div class="swiper-pagination"></div>
      <!-- Add Navigation -->
      <div class="swiper-button-prev"><span>PREV</span><img src="http://themezinho.net/anchor/images/arrow-left.svg" alt="Image"></div>
      <span class="swiper-button-line"></span>
      <div class="swiper-button-next"><span>NEXT</span><img src="http://themezinho.net/anchor/images/arrow-right.svg" alt="Image"></div>
    </div>
    
    <!-- end swiper-container -->
    
    <div class="scroll-down"><span></span></div>
  </section>
  <!-- end slider -->
  <section class="content">
    <div class="works">
      <div class="grid-sizer"></div>
      <!-- end grid-sizer -->

      <!--多图区-->
      <div class="grid-item-double">
        <figure class="reveal-effect se2-white wow perspective-box"> <img src="images/works01.jpg" alt="Image">
          <figcaption> 
            <a data-fancybox="gallery" href="images/works01.jpg">
             <div class="bg-color" data-background="#2095f4"></div>
             <!-- end bg-color -->
             <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
             <!-- end brand -->
             <h5>手机设计</h5>
             <small>Stefan</small> </a></figcaption> 
            </a> 
          </figcaption>
        </figure>
      </div>
      <!-- end grid-item -->
      <div class="grid-item-double">
        <figure class="reveal-effect se2-white wow perspective-box"><img src="images/works02.jpg" alt="Image">
          <figcaption> <a data-fancybox="gallery" href="images/works02.jpg">
            <div class="bg-color" data-background="#ffc509"></div>
            <!-- end bg-color -->
            <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
            <!-- end brand -->
            <h5>手机帆船</h5>
            <small>Chaos-Chen</small> </a></figcaption>
        </figure>
      </div>
      <!-- end grid-item -->
      <div class="grid-item">
        <figure class="reveal-effect se2-white wow perspective-box"><img src="images/works03.jpg" alt="Image">
          <figcaption> <a data-fancybox="gallery" href="images/works03.jpg">
            <div class="bg-color" data-background="#6dd7a9"></div>
            <!-- end bg-color -->
            <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
            <!-- end brand -->
            <h5>Mobile App</h5>
            <small>Kush</small> </a></figcaption>
        </figure>
      </div>
      <!-- end grid-item -->
      <div class="grid-item">
        <figure class="reveal-effect se2-white wow perspective-box"><img src="images/works04.jpg" alt="Image">
          <figcaption> <a data-fancybox="gallery" href="images/works04.jpg">
            <div class="bg-color" data-background="#2d2d2f"></div>
            <!-- end bg-color -->
            <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
            <!-- end brand -->
            <h4>Coddle Mobile App</h4>
            <small>YuLong Zhao</small> </a> </figcaption>
        </figure>
      </div>
      <!-- end grid-item -->
      <div class="grid-item">
        <figure class="reveal-effect se2-white wow perspective-box"><img src="images/works06.jpg" alt="Image">
          <figcaption> <a data-fancybox="gallery" href="images/works06.jpg">
            <div class="bg-color" data-background="#fec520"></div>
            <!-- end bg-color -->
            <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
            <!-- end brand -->
            <h5>Coddle Mobile App</h5>
            <small>USER1</small> </a></figcaption>
        </figure>
      </div>
      <!-- end grid-item -->
      <div class="grid-item-double">
        <figure class="reveal-effect se2-white wow perspective-box"><img src="images/works05.jpg" alt="Image">
          <figcaption> <a data-fancybox="gallery" href="images/works05.jpg">
            <div class="bg-color" data-background="#9f7cb2"></div>
            <!-- end bg-color -->
            <div class="brand"> <img src="images/logo.png" alt="Image"> </div>
            <!-- end brand -->
            <h5>Coddle Mobile App</h5>
            <small>USER2</small></a> </figcaption>
        </figure>
      </div>
      <!-- end grid-item --> 
    </div>
    <!-- end works -->




    <!--白色区域-->
    <div class="icon-features">
      <div class="container">
        <div class="row">
          <h1><b>Do . Myself</b></h1>
          <!-- end col-4 --> 
        </div>
        <!-- end row --> 
      </div>
      <!-- end container --> 
    </div>
    <!-- end icon-features -->





    <!--三图区-->
    <div class="side-image-content">
      <div class="inner">
        <figure class="reveal-effect se2-white wow main-image" data-aos="slide-effect"><img src="images/default.jpg" alt="Image"></figure>
        <figure class="reveal-effect se2-white wow sub-image" data-aos="slide-effect"><img src="images/default (4).gif" alt="Image"></figure>
      </div>
      <!-- end inner -->
      <div class="inner bg1 wow fadeInRight">
        <div class="contenty">
          <h5>Builder says</h5>
          <h2>Do . Myself</h2>
          <p><b>由四个有志青年创建，致力于为爱创作的年轻人搭建平台，展现自我</br>
          欢迎加入我们</b></p>
          <a href="builder.html"><span data-hover="FIND">制 作 团 队</span></a> </div>
        <!-- end content --> 
      </div>
      <!-- end inner --> 
    </div>
    <!-- end side-image-content -->
  </section>
  <!-- end content --> 
</main>
<div class="footer-spacing"></div>
<!-- end footer-spacing -->
<footer class="footer"> <img src="images/logo.png" alt="Image">
  <h4><b>随时随地的创意</b></h4>
  <h2><b>我们欢迎具有创造力的你</b></h2>
  <a href="say-hello.jsp" class="btn-contact"><span data-hover="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DO . Myself">立 即 加 入 DoMyself</span></a>
  <div class="footer-bar"><span class="pull-right">Site created by Stefan</span> </div>
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
