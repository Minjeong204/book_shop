<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<%-- 								<div class="product-overlay">
									<div class="overlay-content">
										<h2>₩${product.price }원</h2>
									<p>${product.bookName }<br>/${product.writer }</p>
										<a href="${contextPath}/productDetail?bookNo=${product.bookNo}" class="btn btn-default add-to-cart"><i
											class="fa fa-search"></i>66666666</a>
									</div>
								</div> --%>
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
</html>