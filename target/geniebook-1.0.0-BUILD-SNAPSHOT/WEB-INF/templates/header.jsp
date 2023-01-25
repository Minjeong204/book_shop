<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	function bookNo4() {
		location.href = "${contextPath}/productDetail?bookNo=4";
	}
	function bookNo7() {
		location.href = "${contextPath}/productDetail?bookNo=7";
	}
	function bookNo20() {
		location.href = "${contextPath}/productDetail?bookNo=20";
	}

</script>
	<%-- <header id="header">header 
		
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="<c:url value="/"/>"><img width="400" height="" src="<c:url value="/resources/images/home/GenieBook.png"/>" alt="" /></a>
						</div>
						
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
										<li><a class="nav-link" href="<c:url value="/memberInfo_ui"/> "><i class="fa fa-user"></i>관리자정보</a></li>
									</c:if>
					
									<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
										<li><a class="nav-link" href="<c:url value="/memberInfo_ui"/> "><i class="fa fa-user"></i>회원정보</a></li>
									</c:if>
								</c:if>
								<li><a href="<c:url value="/cart"/>"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
										<li class="nav-item"><a class="nav-link" href="<c:url value="/admin/adminManager"/> ">관리자기능</a></li>
									</c:if>
					
									<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
										<li class="nav-item"><a class="nav-link" href="<c:url value="/cart"/> ">장바구니</a></li>
									</c:if>
					
									<li class="nav-item"><a class="nav-link" href="javascript:document.getElementById('logout').submit()">로그아웃</a>
									</li>
									<form id="logout" action="<c:url value="/logout" />" method="post">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									</form>
								</c:if>
							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<li class="nav-item"> <a class="nav-link" href="<c:url value="/login"/> ">로그인</a>
								</li>
								<li class="nav-item"> <a class="nav-link" href="<c:url value="/registerForm_member"/> ">회원가입</a>
								</li>
							</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
 						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						<div class="panel panel-default">
<!-- 							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#novel"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> 소설
									</a>
								</h4>
							</div> kks -->
                             <c:if
									test="${pageContext.request.userPrincipal.name == 'admin'}">
									<li class="dropdown"><a
								href="<c:url value="/admin/adminManager"/>">회원관리<!-- <i class="fa fa-angle-down"></i> --></a>
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
		</div><!--/header-bottom-->
	</header><!--/header-->
	
 	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>작은아씨들</span></h1>
									<h2>루이자 메이 알코트</h2>
									<p>성격도 생김새도 완전히 다른 네 자매, 메그, 조, 베스, 에이미. <br>소설 역사상 가장 사랑받은 자매들의 이야기를 968쪽의 디럭스 양장본으로 만나보세요!</p>
									<button type="button" class="btn btn-default get" onclick="bookNo4()">상세보기</button>
								</div>
								<div class="col-sm-6">
									<img width="282" height="400" src="<c:url value="/resources/images/home/Book_1.jpg"/>" class="girl img-responsive" alt="" />
									<img src="<c:url value="/resources/images/home/pricing1.png"/>"  class="pricing" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>윤동주 전 시집</span></h1>
									<h2>윤동주</h2>
									<p>한국인이 사랑하는 시인 1위, 독립운동가 3위에 랭크된 시인,<br>하늘과 바람과 별을 노래한 서정시와 저항과 성찰의 민족시인.<br>윤동주 탄생 100주년 기념 윤동주 전체 작품 124편을 다 담았습니다. </p>
									<button type="button" class="btn btn-default get" onclick="bookNo7()">상세보기</button>
								</div>
								<div class="col-sm-6">
									<img width="260" height="400" src="<c:url value="/resources/images/home/Book_2.jpg"/>" class="girl img-responsive" alt="" />
									<img src="<c:url value="/resources/images/home/pricing2.png"/>"  class="pricing" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>말의 품격</span></h1>
									<h2>이기주</h2>
									<p>말과 사람과 품격에 대한 이야기.<br>《언어의 온도》로 많은 독자의 공감을 얻은 이기주 작가의 새로운 에세이집을 만나보세요!</p>
									<button type="button" class="btn btn-default get" onclick="bookNo20()">상세보기</button>
								</div>
								<div class="col-sm-6">
									<img width="290" height="400" src="<c:url value="/resources/images/home/Book_3.jpg"/>" class="girl img-responsive" alt="" />
									<img src="<c:url value="/resources/images/home/pricing3.png"/>" class="pricing" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider--> --%>
	    <!----------------Nav-- Bar------------>

    <nav style="--bs-bg-opacity: 0;"class="navbar navbar-expand-lg navbar-light bg-light space ">
        <div class="container">
          <a class="navbar-brand" href="#"><img src="https://i.ibb.co/qrwZZNB/logo.png" alt="logo" border="0"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto">
              <li class="nav-item"><a class="nav-link" href="<c:url value="/"/> ">Home</a>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/login"/>">로그인</a>
			  <li class="nav-item"> <a class="nav-link" href="<c:url value="/registerForm_member"/>">회원가입</a>
            </div>
          </div>
        </div>
      </nav>
      <div id="container">
    <nav style="background-color:#ffA500;">
        <ul>
            <li style="background-color:#ffA500;"><a href="<c:url value="/"/>">Home</a></li>
            <li style="background-color:#ffA500;"><a href="/geniebook2/productAll">모든제품</a>
            <li style="background-color:#ffA500;"><a href="#">소설</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li style="background-color:#ffA500;z-index:5;"><a href="<c:url value="/category/novel/1"/>">나라별 소설 </a></li>
                <li style="background-color:#ffA500;z-index:5;"><a href="<c:url value="/category/novel/2"/>">고전/문학 </a></li>
                <li style="background-color:#ffA500;z-index:5;"><a href="<c:url value="/category/novel/3"/>">장르소설 </a></li>
            </ul>
            </li>
            <li style="background-color:#ffA500;"><a href="#">시/에세이</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/poem/1"/>">한국시 </a></li>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/poem/2"/>">외국시 </a></li>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/poem/3"/>">여행 에세이 </a></li>
            	<!-- Second Tier Drop Down -->
            </ul>
            </li>
            <li style="background-color:#ffA500;"><a href="#">자기개발</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/selfDevelopment/1"/>">대화/협상</a></li>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/selfDevelopment/2"/>">자기능력계발 </a></li>
            	<!-- Second Tier Drop Down -->
            </ul>
            </li>
            <li style="background-color:#ffA500;"><a href="#">인문</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/liberal/1"/>">인문일반</a></li>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/liberal/2"/>">심리</a></li>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/liberal/3"/>">철학</a></li>
            	<!-- Second Tier Drop Down -->
            </ul>
            </li>
            <li style="background-color:#ffA500;"><a href="#">어린이</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/children/1"/>">어린이(공통)</a></li>
                <li style="z-index:5;background-color:#ffA500;"><a href="<c:url value="/category/children/2"/>">초등</a></li>
            	<!-- Second Tier Drop Down -->
            </ul>
            </li>
            
    <div action="${contextPath}/productAll" id="searchForm" method="get" style="top:-50px;right:750px;" class="footer-content text-center">
		<form action="/geniebook2/productAll" id="searchForm" method="get">
    <input type="search" name="keyword" placeholder="상품명 입력"style="z-index:5;width:200px;padding-left:10px;position:absolute;top:4.5px;height:35px;right:-575px">
    
    <button type="search" style="z-index:5;position:absolute;right:-700px;top:4.5px;right:-660px;"class="buy-now-btn3">Submit</button>
    	</form>
	</div>
<!-- 		<div class="row">
			<form action="/geniebook2/productAll" id="searchForm" method="get">
				<input type="search" name="keyword">
				<button class="btn" type="search">Search</button>
			</form>
		</div> -->

        </ul>
    </nav>
</div>
	