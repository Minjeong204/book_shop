<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<section id="advertisement">
	<div class="container">
		<img src="images/shop/advertisement.jpg" alt="" />
	</div>
</section>

<section>
<%-- 	<div class="container">
		<div class="row">
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Features Items</h2>

					<c:forEach var="product" items="${productList}">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<c:if test="${not empty product.imageFileName}">
											<img src="${contextPath}/download2.do?imageFileName=${product.imageFileName}"
												id="image" style="height: 300px;" />
										</c:if>
										<h2>${product.price}원</h2>
										<p>${product.bookName}</p>
										<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default"><i
											class="fa fa-search"></i>3333333333</a>
									</div>
 									<div class="product-overlay">
										<div class="overlay-content">
											<h2>${product.price}원</h2>
											<p>${product.bookName}</p>
											<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default add-to-cart"><i
												class="fa fa-search"></i>22222222</a>
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
	</div> --%>
<div style="width:100%;height:1000px;">
					<c:forEach var= "product" items="${productList}">
							<div style="float:left;width:250px;height:500px;margin-left:100px;margin-right:70px;margin-top:50px;margin-bottom:50px; class="col-xl-4">
								<div class="card shadow p-4" style="width: 25rem; border-radius: 10px; border: 1px solid transparent;">
									<c:if test="${not empty product.imageFileName}">
											<img style="width:220px;height:330px;" src="${contextPath}/download2.do?imageFileName=${product.imageFileName}&category=${product.category}"
												id="image"/>
										</c:if>
									<h2 style="text-align: center;">₩${product.price}원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
									<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default"><button class="buy-now-btn">Buy Now</button>
								</div>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>₩${product.price }원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
										<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default add-to-cart"><i
											class="fa fa-search"></i>66666666</a>
									</div>
								</div>
					</c:forEach>
							</div>
							</div>
</section>