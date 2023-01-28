<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
button, .button {
   border-radius: 10px;
   background: #ff136f;
   border: medium none;
   color: #FFFFFF;
   font-family: 'Roboto', sans-serif;
   font-size: 20px;
   padding: 4px 15px;
}

th {
   font-size: 17px;
}
</style>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
         var reader = new FileReader();
         reader.onload = function(e) {
            $('#preview').attr('src', e.target.result);
         }
         reader.readAsDataURL(input.files[0]);
      }
   }

   var cnt = 1;
   function fn_addFile() {
      $("#d_file")
            .append("<br>" + "<input type='file' name='file"+cnt+"' />");
      cnt++;
   }
</script>
<meta charset="utf-8">
</head>
<body>
   <div class="container">
      <h2>
         <b>상품 추가</b>
      </h2>
      <div class="col-sm-16">
         <form
            action="${contextPath}/admin/addProduct?${_csrf.parameterName}=${_csrf.token}"
            enctype="multipart/form-data" method="post">
            <table width="80%" style="padding: 10px 0 10px 0; font-size:17px;">
               <tr height="2" bgcolor="#ff136f">
                  <td colspan="3"></td>
               </tr>
               <tr>
                  <td rowspan="9">
                     <input type="hidden" name="imageFileName" value=""> 
                     <img  id="preview" src="#" width=350 height=500 />
                     <input type="file" name="uploadFile" onchange="readURL(this);" /> 
                  </td>
               <tr>
<!--                <tr>
                  <th>카테고리</th>
                  
               </tr> -->
               <tr>
                  <th><p>카테고리</th>
                  <td colspan="2"><p>
                        <input type="text" name="category" id="category" style="width:350px"></td>
               </tr>
               <tr>
                  <th><p>책 이름</th>
                  <td colspan="2"><p>
                        <input type="text" name="bookName" id="bookName" style="width:350px"></td>
               </tr>
               <tr>
                  <th><p>작가</th>
                  <td colspan="2"><p>
                        <input type="text" name="writer" id="writer" style="width:350px"></td>
               </tr>
               <tr>
                  <th><p>출판사</th>
                  <td colspan="2"><p>
                        <input type="text" name="publisher" id="publisher" style="width:350px"></td>
               </tr>
               <tr>
                  <th><p>출판날짜</th>
                  <td colspan="2"><p>
                        <input type="date" name="pubYear" id="pubYear"></td>
               </tr>
               <tr>
                  <th><p>가격</th>
                  <td colspan="2"><p>
                        <input type="number" name="price" id="price"></td>
               </tr>
               <tr>
                  <th><p>재고</th>
                  <td colspan="2"><p>
                        <input type="number" name="stock" id="stock"></td>
               </tr>
               <tr>
                  <td></td>
                  <th><p>설명</th>
                  <td><p>
                        <textarea rows="10" cols="45" name="description">책에 대해 간단히 소개해보세요!</textarea></td>
               </tr>
               <tr>
                  <td colspan="3" align="center"><p>
                        <!-- <button type="button" class="button" onclick="history.go(-1)">뒤로가기</button> -->
                        <input type="reset" class="button" value="다시입력" /> <input
                           type="submit" value="상품 추가" class="button" />
                     <p>
                     <p></td>
               </tr>
            </table>

         </form>
      </div>
   </div>
</body>
</html>
<!--/form-->