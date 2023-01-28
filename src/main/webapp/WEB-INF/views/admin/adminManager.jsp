<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">
table {
	text-align: center;
}

button {
	border-radius: 10px;
	background: #ff136f;
	border: medium none;
	border-radius: 4;
	color: #FFFFFF;
	font-family: 'Roboto', sans-serif;
	padding: 4px 15px;
}
</style>
<meta charset="UTF-8">
<script type="text/javascript">
	function member_search() {

		location.href = "member_search?id=" + $("#member_search").val();
	}
	function sendMail_All() {

		location.href = "mailSending/all";
	}

	// 삭제 js
	function deleteConfirm(no){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="deleteProduct?bookNo="+no;
		} else {
			alert("삭제가 취소되었습니다.");
		}
	}
	function on_refresh(a,b){
		refresh(a);
		refresh(b);
	}
	function refresh(no){
		if(no > 0){
			alert('완료되었습니다.');
			location.href="adminManager";
		}else if(no == 0){
			alert('취소되었습니다.');
			location.href="adminManager";
		}
	}
</script>
</head>
<body onload="on_refresh(${deleteStatus},${insertStatus})">
 <!--category-tab-->
    <script type="text/javascript">
               function member() {
                  var member = document.getElementById("member");
                  var product = document.getElementById("product");
                  member.style.display = "none";
                  product.style.display = "block";
               }
               function product() {
                  var member = document.getElementById("member");
                  var product = document.getElementById("product");
                  member.style.display = "block";
                  product.style.display = "none";
               }
      </script>

   <div class="container">
      <div class="col-12">
         <ul class="nav nav-tabs">
            <li class="active"><a href="#member" data-toggle="tab"
               onclick="member();">회원관리</a></li>
            <li style="background-color:#feeae8"><a style="color:#000000;" href="#product" data-toggle="tab" onclick="product();">상품관리</a></li>
         </ul>
      </div>
      <div class="tab_content">
         <div class="tab-pane fade active in" id="member">
            <div class="member-details">
               <p>
               <p>
                  <!--member-details-->
               <div class="view-member">
                  회원 ID <input type="text" id="member_search">
                  <button style="background-color:#ff136f" type="button" onClick="member_search()">검색</button>

                  <button style="background-color:#ff136f" type="button" onClick="sendMail_All()">모든 회원 메일 전송</button>

                  <table class="table" border="0"
                     style="margin-left: auto; margin-right: auto;">

                     <tr
                        style="border: medium none; border-radius: 0; color: #FFFFFF; font-family: 'Roboto', sans-serif; padding: 6px 25px;">
                        <th style="background-color:#ff136f;">ID</th>
                        <th style="background-color:#ff136f;">이름</th>
                        <th style="background-color:#ff136f;">총 누적 금액</th>
                        <th style="background-color:#ff136f;">핸드폰 번호</th>
                        <th style="background-color:#ff136f;">메일 수신 여부</th>
                        <th style="background-color:#ff136f;"></th>
                     </tr>
                     <c:forEach var="memberVO" items="${memberList}">
                        <tr >
                           <td>${memberVO.id}</td>
                           <td>${memberVO.name}</td>
                           <td>${memberVO.acc_Price}원</td>
                           <td>${memberVO.phoneNum}</td>
                           <td>${memberVO.receive_email}</td>
                           <td><button style="background-color:#ff136f;" type="button" id=memberDetail onclick="location.href='memberDetail?id=${memberVO.id}'" class="button">
                           		상세보기</button></td>
                        </tr>
                     </c:forEach>

                  </table>
               </div>
            </div>
         </div>
         <div class="tab-pane fade" id="product">
            <div class="product-details">
               <!--product-details-->
               <div class="view-product">
                  <table class="table" border="0"
                     style="margin-left: auto; margin-right: auto;">

                     <tr
                        style="background: #ff136f; border: medium none; border-radius: 0; color: #FFFFFF; font-family: 'Roboto', sans-serif; padding: 6px 25px;">
                        <th style="background-color:#ff136f">ID</th>
                        <th style="background-color:#ff136f">카테고리</th>
                        <th style="background-color:#ff136f">책 이름</th>
                        <th style="background-color:#ff136f">작가</th>
                        <th style="background-color:#ff136f">출판사</th>
                        <th style="background-color:#ff136f">가격</th>
                        <th style="background-color:#ff136f">재고</th>
                        <th style="background-color:#ff136f" colspan="2"><button style="background-color:#ffffff;color:#ff136f;" type="button"
                              style="float=right; background: white; border: medium none; border-radius: 0; color: #ff136f; font-family: 'Roboto', sans-serif; padding: 4px 15px; border-radius: 10px;"
                              id="addProduct" onclick="location.href='addProductForm'" >
                              <b>상품 추가</b>
                           </button></th>
                     </tr>
                     <c:forEach var="productVO" items="${productList}">
                        <tr>
                           <td>${productVO.bookNo}</td>
                           <td>${productVO.category}</td>
                           <td>${productVO.bookName}</td>
                           <td>${productVO.writer}</td>
                           <td>${productVO.publisher}</td>
                           <td>${productVO.price}</td>
                           <td>${productVO.stock}</td>
                           <td><button style="background-color:#ff136f" type="button" id=productDetail
                                 onclick="location.href='productDetail?bookNo=${productVO.bookNo}'">더보기</button></td>
                           <td><button style="background-color:#ff136f"type="button" id=deleteProduct
                                 onclick="deleteConfirm(${productVO.bookNo})">삭제</button></td>
                        </tr>
                     </c:forEach>

                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
