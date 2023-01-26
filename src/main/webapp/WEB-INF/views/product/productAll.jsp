<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page import="kr.ac.spring.product.vo.Criteria"%>
<section>
<div style="width:100%;height:1300px;">
					<c:forEach var= "product" items="${productList}">
							<div style="float:left;width:250px;height:500px;margin-left:140px;margin-right:70px;margin-top:50px;margin-bottom:50px; class="col-xl-4">
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
<%-- 	<div class="container">
		<div class="row">
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
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
											class="btn btn-default move"><i class="fa fa-search"></i>상세 보기</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>${product.price}원</h2>
											<p>${product.bookName}</p>
											<a
												href="${contextPath}/productDetail?bookNo=${product.bookNo}"
												class="btn btn-default add-to-cart move"><i
												class="fa fa-search"></i>상세보기</a>
												class="fa fa-search"></i>ㅇㅁㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇ</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!--features_items-->
			</div>
		</div> --%>
	<div style="position:absolute;bottom:370px;left:540px;" class='pull-right'>
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous"><a href="${pageMaker.startPage-1}" >Previous</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="num">
				<li class="paginate_button ${pageMaker.cri.pageNum == num?'active': ''} ">
					<a  href="${num}">${num}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next}">
				<li class="paginate_button next"><a href="${pageMaker.endPage+1}" tabindex="-1">Next</a></li>
			</c:if>
		</ul>
	</div>

	<form id="actionForm" action="/geniebook/productAll" method='get'>
		<input type='hidden' name='pageNum' value="${pageMaker.cri.pageNum}">
		<input type='hidden' name='amount' value="${pageMaker.cri.amount}">
	</form>


</section>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	type="text/javascript"></script>
<script>
	$(document).ready(
			function() {
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
				var actionForm = $("#actionForm");
				$(".paginate_button a").on(
						"click",
						function(e) {
							e.preventDefault();
							console.log('click');

							actionForm.find("input[name = 'pageNum']").val(
									$(this).attr("href"));
							actionForm.submit();
						});
				$(".move").on("click", function(e) {
					e.preventDefault();
					actionForm.append("<input type='hidden' name='bookNo' value='"+$(this).attr("href")+"'>");
					actionForm.submit();
				});
			});
</script>