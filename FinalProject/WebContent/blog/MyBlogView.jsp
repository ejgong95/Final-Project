<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = (String) session.getAttribute("id");
%>
	<input type="hidden" name="num" value="${blog.num }">
	<div id="wrap" align="center">
		<h1>게시글 상세보기</h1>
		<table>

			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${blog.writedate }" />
				<th>조회수</th>
				<td>${blog.readcount }</td>
			</tr>

			<tr>
				<th>제목</th>
				<td colspan="3">${blog.title }</td>
			</tr>

			<tr>
				<th>내용</th>
				<td colspan="3"><pre>${blog.content }</pre></td>
			</tr>
		</table>
		<br>
		<br> <input type="button" value="수정하기"
			onclick="location.href='MainServlet?command=blog_update_form&num=${blog.num}'">
		&nbsp; <input type="submit" value="삭제하기"
			onclick="location.href='MainServlet?command=blog_delete&num=${blog.num}'">
		&nbsp; <input type="button" value="뒤로가기"
			onclick="location.href='MainServlet?command=my_blog&id=<%=id%>'">

	</div>

</body>
</html>