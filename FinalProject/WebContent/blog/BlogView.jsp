<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap" align="center">
	<h1> 게시글 상세보기 </h1>
		<table>

			<tr>
				<th> 작성일 </th> <td> <fmt:formatDate value="${blog.writedate }"/>
				<th> 조회수 </th> <td> ${blog.readcount }</td> 				
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
		<br><br>


 </div>
</body>
</html>