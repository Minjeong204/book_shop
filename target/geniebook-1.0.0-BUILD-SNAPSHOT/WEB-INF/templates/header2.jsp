<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><tiles:insertAttribute name="title" /></title>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/reset.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/price-range.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/responsive.css"/>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>">
</head>
<header id="header">
	<!--header-->


	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="<c:url value="/"/>"><img width="400" height=""
							src="<c:url value="/resources/images/home/GenieBook.png"/>"
							alt="" /></a>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<c:if
									test="${pageContext.request.userPrincipal.name == 'admin'}">
									<li><a class="nav-link"
										href="<c:url value="/admin/adminInfo"/> "><i class="fa fa-user"></i>???????????????</a></li>
								</c:if>

								<c:if
									test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li><a class="nav-link"
										href="<c:url value="/memberInfo_ui"/> "><i
											class="fa fa-user"></i>????????????</a></li>
								</c:if>
							</c:if>
							<%-- <li><a href="<c:url value="/cart"/>"><i class="fa fa-shopping-cart"></i> Cart</a></li> --%>
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<c:if
									test="${pageContext.request.userPrincipal.name == 'admin'}">
									<li class="nav-item"><a class="nav-link"
										href="<c:url value="/admin/adminManager"/> ">???????????????</a></li>
								</c:if>

								<c:if
									test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li class="nav-item"><a class="nav-link"
										href="<c:url value="/cart"/> ">????????????</a></li>
								</c:if>

								<li class="nav-item"><a class="nav-link"
									href="javascript:document.getElementById('logout').submit()">????????????</a>
								</li>
								<form id="logout" action="<c:url value="/logout" />"
									method="post">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form>
							</c:if>
							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<li class="nav-item"><a class="nav-link"
									href="<c:url value="/login"/> ">?????????</a></li>
								<li class="nav-item"><a class="nav-link"
									href="<c:url value="/registerForm_member"/> ">????????????</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="<c:url value="/"/>" class="active">Home</a></li>
							<li class="dropdown"><a href="<c:url value="/productAll"/>">Books<!-- <i class="fa fa-angle-down"></i> --></a>
							<li class="dropdown"><a
								href="<c:url value="/board/listboards"/>">Q&A<!-- <i class="fa fa-angle-down"></i> --></a>
								
							<c:if
									test="${pageContext.request.userPrincipal.name == 'admin'}">
									<li class="dropdown"><a
								href="<c:url value="/admin/adminManager"/>">????????????<!-- <i class="fa fa-angle-down"></i> --></a>
								</c:if>
							
					

						</ul>
					</div>
				</div>
				<!-- <div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div> -->
			</div>
		</div>
	</div>
	</div>
	<!--/header-bottom-->
</header>
<!--/header-->

<section id="slider">
	<!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-sm-6">
								<h1>
									<span>???????????????</span>
								</h1>
								<h2>????????? ?????? ?????????</h2>
								<p>
									????????? ???????????? ????????? ?????? ??? ??????, ??????, ???, ??????, ?????????. <br>?????? ????????? ?????? ????????????
									???????????? ???????????? 968?????? ????????? ??????????????? ???????????????!
								</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img width="282" height="400"
									src="<c:url value="/resources/images/home/Book_1.jpg"/>"
									class="girl img-responsive" alt="" /> <img
									src="<c:url value="/resources/images/home/pricing1.png"/>"
									class="pricing" alt="" />
							</div>
						</div>
						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>????????? ??? ??????</span>
								</h1>
								<h2>?????????</h2>
								<p>
									???????????? ???????????? ?????? 1???, ??????????????? 3?????? ????????? ??????,<br>????????? ????????? ?????? ????????? ????????????
									????????? ????????? ????????????.<br>????????? ?????? 100?????? ?????? ????????? ?????? ?????? 124?????? ??? ???????????????.
								</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img width="260" height="400"
									src="<c:url value="/resources/images/home/Book_2.jpg"/>"
									class="girl img-responsive" alt="" /> <img
									src="<c:url value="/resources/images/home/pricing2.png"/>"
									class="pricing" alt="" />
							</div>
						</div>

						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>?????? ??????</span>
								</h1>
								<h2>?????????</h2>
								<p>
									?????? ????????? ????????? ?????? ?????????.<br>???????????? ???????????? ?????? ????????? ????????? ?????? ????????? ????????? ?????????
									??????????????? ???????????????!
								</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img width="290" height="400"
									src="<c:url value="/resources/images/home/Book_3.jpg"/>"
									class="girl img-responsive" alt="" /> <img
									src="<c:url value="/resources/images/home/pricing3.png"/>"
									class="pricing" alt="" />
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!--/slider-->