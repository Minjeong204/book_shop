<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-sm-8 padding-right" >
				<div class="features_items" >
					<!--features_items-->
					<p><p><p><p><p><p>
					<h2 class="title text-center">추천 상품</h2>
					<c:forEach var= "product" items="${productList}">
						<div class="col-sm-4" >
						<div class="col-md-4 col-sm-6" >
							<div class="product-grid8">
								<div class="product-image8" style="width: 200px; height: 500px;">
									<c:if test="${not empty product.imageFileName}">
											<img src="${contextPath}/download2.do?imageFileName=${product.imageFileName}&category=${product.category}"
												id="image"/>
											<ul class="social">
												<li><a href="" class="fa fa-search"></a></li>
												<li><a href="" class="fa fa-shopping-bag"></a></li>
												<li><a href="" class="fa fa-shopping-cart"></a></li>
											</ul>
										</c:if>
									<h2>₩${product.price }원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
									<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default"><i
										class="fa fa-search"></i>555555555</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>₩${product.price }원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
										<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default add-to-cart"><i
											class="fa fa-search"></i>66666666</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					
				</div>
				<!--features_items-->
			</div>
		</div>
	</div>


</body>
</html> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>

   <link rel="stylesheet" href="././resources/css/sr.css">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">



    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;1,200;1,300;1,400&display=swap" rel="stylesheet">

</head>
<body>
    
<!--------------------Carousel-------------->
<div class="container space">
    <div id="carouselExampleIndicators" class="carousel slide carousal-bg" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
              <div class="row align-items-center">
                  <div class="col-xl-7">
                      <h1 class="display-4 fw-normal">Mi LED TV 4A PRO 32</h1>
                      <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Placeat repellat amet praesentium saepe voluptate obcaecati facere blanditiis accusantium nihil quaerat cum, rem eos sequi quas animi! Reprehenderit illum maxime tempore.</p>
                         
                      <h3 class="price">1289$</h3>

                      <button class="buy-now-btn">Buy Now</button>
                  </div>
                  <div class="col-xl-5">
                    <img src="https://i.ibb.co/V2fvvPD/tv.png" class="d-block w-100" alt="...">
                   
                  </div>
              </div>
          </div>
          <div class="carousel-item">
            <div class="row align-items-center">
                <div class="col-xl-7 fw-normal">
                    <h1 class="display-4">JBL HEADPHON</h1>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Placeat repellat amet praesentium saepe voluptate obcaecati facere blanditiis accusantium nihil quaerat cum, rem eos sequi quas animi! Reprehenderit illum maxime tempore.</p>
                       
                    <h3 class="price">245$</h3>

                    <button class="buy-now-btn">Buy Now</button>
                </div>
                <div class="col-xl-5">
                    <img src="https://i.ibb.co/6YXnnZx/headphone.png" class="d-block w-100" alt="...">
                </div>
                </div>
          </div>
          <div class="carousel-item">
              <div class="row align-items-center">
            <div class="col-xl-7">
                <h1 class="display-4 fw-normal">X-BOX</h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Placeat repellat amet praesentium saepe voluptate obcaecati facere blanditiis accusantium nihil quaerat cum, rem eos sequi quas animi! Reprehenderit illum maxime tempore.</p>
                   
                <h3 class="price">389$</h3>

                <button class="buy-now-btn">Buy Now</button>
            </div>

            <div class="col-xl-5">
                <img src="https://i.ibb.co/0qsPhTR/xbox.png" class="d-block w-100" alt="...">

            </div>
            
          </div>

        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
</div>


<!--------------------Catarogise----------------->


<div class="container catagories space">
    <h2 class="cata">Catagories</h2>
 <div class="row">
     <div class="col-xl-4">
       
         <div class="cat1 d-flex justify-content-between align-items-center">
            
             <h1>Watche</h1>
             <img src="https://i.ibb.co/Vp9ZfWr/watch.png" alt="watch" border="0">
         </div>
     </div>

     <div class="col-xl-4">
    
         <div class="cat2 d-flex justify-content-between align-items-center">
             <h1>Bag</h1>
             <img src="https://i.ibb.co/JFsLgWw/bag.png" alt="bag" border="0">
         </div>
     </div>

     <div class="col-xl-4">
         <div class="cat3 d-flex justify-content-between align-items-center">
             <h1>Shoes</h1>
             <img src="https://i.ibb.co/mBtKTsd/shoes.png" alt="shoes" border="0">
         </div>
     </div>
 </div>
</div>

<!----------Shoping----------------->

<!-- <div class="container space">
    <div class="row">
        <h2>Shoes</h2>
    <div class="col-xl-4">
        <div class="card shadow p-4" style="width: 25rem; border-radius: 10px; border: 1px solid transparent;">
            <img src="https://i.ibb.co/16QsqXb/shoe-1.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5>Reebok Dart Men's Shoes</h5>
              <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et, eius!</p>
              <h5>$1059</h5>
              <button class="buy-now-btn">Buy Now</button>
            </div>
         </div>
    </div>
    <div class="col-xl-4">
        <div class="card shadow p-4" style="width:25rem; border-radius: 10px; border: 1px solid transparent;">
            <img src="https://i.ibb.co/cvszWqg/shoe-2.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5>Reebok Pump</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quia, vero?</p>
              <h5>$168</h5>
              <button class="buy-now-btn">Buy Now</button>
            </div>
          </div>
    </div>
    <div class="col-xl-4">
        <div class="card shadow p-4" style="width: 25rem; border-radius: 10px; border: 1px solid transparent;">
            <img src="https://i.ibb.co/xjQKsSf/shoe-3.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5>Reebok All Terrain</h5>
              <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt, </p>
             <h5>$128</h5>
             <button class="buy-now-btn">Buy Now</button>
            </div>
          </div>
    </div>
    </div>
</div> 비교하면서 -->



<!----------Shoping----------------->
<h2>추천</h2>
					<c:forEach var= "product" items="${productList}">
					
						<div class="container space">
						<div class="row row-cols-1 row-cols-md-3 g-4 w-70 space">
							<div class="col">
								<div class="card h-100 w-70">
									<c:if test="${not empty product.imageFileName}">
											<img src="${contextPath}/download2.do?imageFileName=${product.imageFileName}&category=${product.category}"
												id="image"/>
										</c:if>
									<h2>₩${product.price }원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
									<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default"><button class="buy-now-btn">Buy Now</button>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>₩${product.price }원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
										<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default add-to-cart"><i
											class="fa fa-search"></i>66666666</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
</div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

</body>
</html>