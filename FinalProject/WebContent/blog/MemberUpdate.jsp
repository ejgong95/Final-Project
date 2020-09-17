<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
	%>
	<div id="wrap" align="center">
		<h1>게시글 수정</h1>
		<form name="frm" method="post" action="MainServlet">
			<input type="hidden" name="command" value="member_update">
			<input type="hidden" name="id" value="${mVo.id }">
			<h2>회원 수정</h2>
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" size="20" value="${mVo.id}"
						readonly></td>
				</tr>

				<tr>
					<td>이름</td>
					<td><input type="text" name="name" size="20"
						value="${mVo.name}" readonly></td>
				</tr>

				<tr>
					<td>암&nbsp;호</td>
					<td><input type="password" name="password"
						value="${mVo.password}" size="20">*</td>
				</tr>

				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" size="20"
						value="${mVo.email}"></td>
				</tr>

				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" size="20"
						value="${mVo.phone}"></td>
				</tr>

				<tr>
					<td>생년월일</td>
					<td><input type="text" name="birth" size="20"
						value="${mVo.birth}"></td>
				</tr>



				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="확인"
						onclick="return memberjoinCheck()">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="취소">
						<input type="button" value="뒤로가기"
						onclick="location.href='MainServlet?command=login_success&id=<%=id%>&password=<%=password%>'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>