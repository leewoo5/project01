<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<!-- Bootstrap 3.3.4 -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- Font Awesome Icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<!-- <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" /> -->
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
     folder instead of downloading all of them to reduce the load. -->
<link href="/resources/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title" /></title>

<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<style type="text/css">
body {
	background-color: black;
	
}
.headerback {
/* 	background-image: url("/resources/night.jpg"); */
	background-repeat: no-repeat ;
	background-size: cover;
/* 	height: 600px; */
	width:100%;
	height:70%;
}
nav a {
	color: white;
	
	
}
.side {
	background-color: white;
	height: 100%;
	
}

#home {
	font-size: 15px;
}
#topnavbar li, a {
	font-size: 15px;
}
#toprow{
	font-size: 12px;
	margin-bottom: 0px;
}
.margin200 {
	margin: 200px;
}

.navbar {
/* 	position:absolute; */
background-color:black;
width:100%;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */

footer {
	height: 100px;
	background-color:  #cccccc;
}
/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.mySlides {
/* 	display:none */
float:left;
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
/*   margin: auto; */
}
.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration:4s;
  animation-name: fade;
  animation-duration: 4s;
}

@-webkit-keyframes fade {
  from {opacity: .6} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .6} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

@media only screen and (max-width: 300px) {
  .main_image {
  		max-width:100%;
  	}
}


</style>
<sitemesh:write property="head" />
</head>

<body>
	<!-- .wrapper -->
	<div class="row">
		<!-- left column -->

		<div class="col-md-12">
			<!-- general form elements -->
	<div class="wrapper">
		<div class="container-fluid text-center">
			<div class="box">
				<div class="box-body">
					<!-- header start -->
					<div class="container-fluid headerback">

						<!-- Navbar -->
						<nav class="navbar">
							<div class="container-fluid col-md-12" id="nav">

								<div class="navbar-header">
									<a id="home" class="nav navbar-brand" href="/">Home</a>
								</div>
								<ul id="topnavbar" class="nav navbar-nav">
									<li class="dropdown"><a class="dropdown-toggle"
										data-toggle="dropdown" href="#"><i class="fa fa-film"></i>
											영화<span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="tboard/list?board_id=1">영화공유</a></li>
											<li><a href="http://localhost:8080/movie/list">영화정보</a></li>
										</ul></li>
									<li class="dropdown"><a class="dropdown-toggle"
										data-toggle="dropdown" href="#"><i class="fa fa-smile-o"></i>
											만화<span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="http://localhost:8080/comic/list">만화검색</a></li>
											<li><a href="http://localhost:8080/comic/list">만화리뷰</a></li>
										</ul></li>
									<li class="dropdown"><a class="dropdown-toggle"
										data-toggle="dropdown" href="#"><i class="fa fa-book"></i>
											도서<span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="book/search?cate_id=33">도서검색</a></li>
											<li><a href="book/list">나의 독서노트 리스트</a></li>
										</ul></li>
									<li><a href="gboard/list">게임리뷰</a></li>
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<c:if test="${login == null}">
										<li><a href="/member/register"><span
												class="glyphicon glyphicon-user"></span> Sign Up</a></li>
										<li id="login"><a href="/user/login"><span
												class="glyphicon glyphicon-log-in"></span> Login</a></li>
									</c:if>
									<c:if test="${login != null}">
										<li><a href="/user/logininfo">${login.uname}</a></li>
										<li id="login"><a href="/user/logoff"><span
												class="glyphicon glyphicon-log-out"></span> Logout</a></li>
									</c:if>
								</ul>
							</div>
						</nav>
						<div class=" col-md-10" >
						<div class="slideshow-container" style="width:100%">
							<div class="mySlides fade">
								<img src="/resources/image/10.PNG" class="main_image" style="width:1750px;">
							</div>

							<div class="mySlides fade">
								<img src="/resources/image/11.JPG" class="main_image" style="width:1750px; " >
							</div>

							<div class="mySlides fade">
								<img src="/resources/image/12.JPG" class="main_image" style="width:1750px;">
							</div>

						</div>
						</div>
						
						<!-- Navbar End -->
					</div>
					<!-- header end -->
					<!-- Body start -->
					<div class="container-fluid">
						<sitemesh:write property="body"></sitemesh:write>
					</div>
					<!-- Body end -->

					<!-- footer start -->
					<footer class="text-center">
						<hr>
						<a href="#top" id="btntop" title="To Top"><i
							class="fa fa-angle-up fa-2x"></i></a>
						<p>made by sang woo Lee in 2016</p>
						<!-- footer end -->
					</footer>
				</div>
				<div class="col-lg-3 side"></div>
				<!-- row end -->
			</div>
			<!-- container end -->
		</div>
		<!-- ./wrapper -->
	</div>

</div>
</div>

	<!-- footer -->
<script>
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 200) {
				$('#btntop').fadeIn();
			} else {
				$('#btntop').fadeOut();
			}
		});
		$('#btntop').click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 400);
			return false;
		});
	});
</script>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
       slides[slideIndex-1].style.display = "block";  
        setTimeout(showSlides, 4000); // Change image every 2 seconds
}
</script>

</body>
</html>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src='/resources/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/app.min.js" type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js" type="text/javascript"></script>

