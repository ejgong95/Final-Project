<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script type="text/javascript" src="script/blog.js"></script>
</head>
<body>
<div id="wrap" align="center">
<h1>게시글 수정</h1>
<form name="frm" method="post" action="MainServlet">
<input type="hidden" name="command" value="blog_update">
<input type="hidden" name="num" value="${blog.num}">
<table>	
	<tr>
		<th>제목</th>
		<td><input type="text" size="70" name="title" value="${blog.title }"></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><textarea cols="70" rows="15" name="content">${blog.content }</textarea></td>
	</tr>
</table>
<br><br>
<%
String id = (String) session.getAttribute("id");
%>
<input type="submit" value="등록" onclick="return blogCheck()">
<input type="reset" value="다시 작성">
<input type="button" value="목록" onclick="location.href='MainServlet?command=my_blog&id=<%=id%>'">

</form>
</div>
</body>
</html>