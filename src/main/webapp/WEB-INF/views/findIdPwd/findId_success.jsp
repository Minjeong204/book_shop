<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<label>당신의 ID는  ${memberVO.id } 입니다.</label><br><br>
	<button style="background-color:#ff136f;border-radius:8px;border-color:#ffffff;color:#ffffff;" type="button" onclick="location.href='findPwd'" class="btn btn-dark">비밀번호찾기</button>
</body>
</html>