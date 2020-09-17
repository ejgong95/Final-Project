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
<meta charset="EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="script/member.js"></script>

</head>

<body>
<form name="frm" method="post" action="MainServlet">
<input type="hidden" name="command" value="member_insert">
	회원가입

	<form class="form-horizontal">

		<div class="form-group">
			<label for="inputname" class="col-sm-2 control-label">이름</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="insertname"  name="insertname"
					placeholder="name">
			</div>

		</div>
		<div class="form-group">
			<label for="inputid" class="col-sm-2 control-label">아이디</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="insertid" name="insertid"
					placeholder="아이디">
			</div>

			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="insertpassword" name="insertpassword"
						placeholder="비밀번호">
				</div>
			</div>


		</div>
		<div class="form-group">
			<label for="inputEmail" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="insertemail" name="insertemail"
					placeholder="Email">
			</div>
		</div>

		<div class="form-group">
			<label for="inputphone" class="col-sm-2 control-label">전화번호</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="insertphone" name="insertphone"
					placeholder="전화번호">
			</div>
		</div>

		<div class="form-group">
			<label for="inputbirth" class="col-sm-2 control-label">생년월일</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="insertbirth" name="insertbirth"
					placeholder="생년월일">
			</div>
		</div>

		<div class="row"></div>


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label> <input type="checkbox"> Remember me
					</label>
				</div>
			</div>
		</div>
		
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="회원 등록" class="btn btn-default" onclick="return memberjoincheck()">
			</div>
		</div>
		</form>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="reset" class="btn btn-default">다시 작성</button>
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" value="처음으로" class="btn btn-default" onclick="location.href=MainServlet?command=main_page'">
			</div>
		</div>
		
		
		
	
	</form>
</body>
</html>