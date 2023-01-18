<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page import="kr.ac.spring.product.vo.Criteria"%>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Features Items</h2>

					<c:forEach var="product" items="${productList }">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<c:if test="${not empty product.imageFileName}">
											<img
												src="${contextPath}/download2.do?imageFileName=${product.imageFileName}"
												id="image" style="height: 300px;" />
										</c:if>
										<h2>${product.price}원</h2>
										<p>${product.bookName}</p>
										<a
											href="${contextPath}/productDetail?bookNo=${product.bookNo}"
											class="btn btn-default"><i class="fa fa-search"></i>상세 보기</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>${product.price}원</h2>
											<p>${product.bookName}</p>
											<a
												href="${contextPath}/productDetail?bookNo=${product.bookNo}"
												class="btn btn-default add-to-cart"><i
												class="fa fa-search"></i>상세보기</a>
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

		<div class="row">
			<form action="/geniebook/productAll" id="searchForm" method="get">
				<input type="search" name="keyword">
				<button class="btn" type="search">Search</button>
			</form>
		</div>
	</div>

</section>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	type="text/javascript"></script>
<script>
	$(document).ready(function() {
		var searchForm = $("#searchForm");
		$("#searchform button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색 종류를 선택하세요");
				return false;
			}
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			e.preventDefault();

			searchForm.submit();
		});
	});
</script>