<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title><tiles:insertAttribute name="title" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/reset.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/prettyPhoto.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/price-range.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/sr.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/dropdown.css"/>" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">



<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;1,200;1,300;1,400&display=swap"
	rel="stylesheet">

<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png"/>">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>">
<link rel="apple-touch-icon-precomposed"
	href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>">
</head>
<!--/head-->
<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.scrollUp.min.js"/>"></script>
	<script src="<c:url value="/resources/js/price-range.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.prettyPhoto.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
		integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
		integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
		crossorigin="anonymous"></script>
</body>
</html>