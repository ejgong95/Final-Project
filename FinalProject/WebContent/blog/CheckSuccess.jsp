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
<form name="frm" method="get" action="MainServlet">
<input type="hidden" name="command" value="log_out">



<div align="center">


	
		<div class="row">
			<div class="col-md-4">
				<br><br><br><br>
				<table>
				<tr>
					<td>
					<h3><%=request.getParameter("id") %>님 환영합니다.	</h3>
					</td>
				</tr>

					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="로그아웃" onclick="location.href='MainServlet?command=log_out'"> &nbsp;
							<input type="button" value="회원정보수정" onclick="location.href='MainServlet?command=member_update_form&id=<%=request.getParameter("id") %>'">
						</td>
					</tr>
					<tr>
						<td>
						<input type="button" class="btn btn-primary btn-lg btn-block" value="마이블로그" onclick="location.href='MainServlet?command=my_blog&id=<%=request.getParameter("id") %>'">
						</td>
					</tr>
				</table>
			</div>
		
			<div class="col-md-8">
			<%@ include file="RankingList.jsp" %>
			</div>
		</div>
</div>
	</form>
</body>
</html>