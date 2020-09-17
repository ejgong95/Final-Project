<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<script type="text/javascript" src="script/blog.js"></script>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
%>
<div id="wrap" align="center">
   <h1> 게시글 등록 </h1>
   <form action="MainServlet" name="frm" method="post">
      <input type="hidden" name="command" value="blog_write">
      <input type="hidden" name="id" value="<%=id %>">
      <table>
      	
         
         <tr>
            <th>제목</th>
            <td> <input type="text" class="form-control" placeholder="제목을 입력하세요" name="title"></td>
         </tr>
         
         <tr>
            <th>내용</th>
            <td> <textarea class="form-control" rows="10" name="content" placeholder="내용을 입력하세요"></textarea> </td>
         </tr>
      </table>
      <br> <br>
      <input type="submit" value="등록" class="btn btn-default" onclick="return blogCheck()">
      <input type="reset" value="다시 작성" class="btn btn-default">
      <input type="button" value="목록" class="btn btn-default" onclick="location.href='MainServlet?command=login_success'">
   </form>
</div>
</body>
</html>