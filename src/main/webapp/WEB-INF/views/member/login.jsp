<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<style>
</style>

  <section id="form">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-1"
				style="float: none; margin: 0 auto;background-color:#ffa500;border-radius:8px;width:350px;height:340px;">
				<div class="login-form">
					<h2 style="font-weight:bold;color:#ffffff;padding-top:10px;" align="center">LOGIN</h2>
					${message }



					<form action="<c:url value="/login"/>" method="post">
						<div class="form-group">
							<label style="color:#ffffff;" for="ID">ID:</label> <input type="text"
								class="form-control" id="username" placeholder="Enter ID"
								name="username">
								
							<c:if test="${not empty errorMsg}">
								<div style="color: #ff0000; font-size: 10px;">
									<h5 align="center">${errorMsg}</h5>
								</div>
							</c:if>
						</div>
						<div class="form-group">
							<label style="color:#ffffff;" for="Password">Password:</label> <input type="password"
								class="form-control" id="password" placeholder="Enter password"
								name="password">
						</div>
						<div align="center">
							<a style="color:#ffffff;width:300px; height:150px; padding-left:230px; text-decoration:none;" href=""
								onclick="window.open('${contextPath}/findIdPwd','','left='+(screen.availWidth-300)/2+',top='+(screen.availHeight-150)/2+',width=300px, height=150px')">Forgot Password?</a> <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<button style="background-color:#ff136f;border-radius:8px;" type="submit" class="btn btn-default">로그인</button>

							<button style="background-color:#ff136f;border-radius:8px;" type="button" class="btn btn-default"
								onclick="location.href='registerForm_member'">회원 가입</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
</section>