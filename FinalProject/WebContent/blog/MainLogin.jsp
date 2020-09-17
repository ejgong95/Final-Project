<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>블로그 메인</title>
<script type="text/javascript" src="script/member.js"></script>

</head>
<body>
	<br>
	<br>
	<form name="frm" method="get" action="MainServlet"
		class="form-horizontal">
		<input type="hidden" name="command" value="login_success">


		<div class="row">

			<div class="col-md-4">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-10">
						<input type="text" name="id" value="${id }" class="form-control"
							id="inputEmail3" placeholder="id">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" name="password" class="form-control"
							id="inputPassword3" placeholder="Password">
					</div>
				</div>

				<div class="form-group" align="center">
					
						<input class="btn btn-primary btn-lg" type="submit" value="로그인"
							onclick="return logincheck()"> &nbsp;&nbsp;
					
						 <input
							class="btn btn-info btn-lg" type="button" value="회원가입"
							onclick="location.href='MainServlet?command=join_page'">
					
				</div>
			</div>



			<div class="col-md-8">
				<%@include file="RankingList.jsp" %>


			</div>
		</div>

	</form>
</body>
</html>