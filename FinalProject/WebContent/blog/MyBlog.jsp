<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>마이 블로그</title>
</head>
<body>
<%
   String id = (String) session.getAttribute("id");
   String password = (String) session.getAttribute("password");
%>
<div id="wrap" align="center">
<div class="row" align="center">

         <div class="col-md-4">
         <br><br><br><br>
      <table>
      <tr>
         <td>
            <h3><%=request.getParameter("id")%> 님 환영합니다.</h3>
            
         </td>
      </tr>
         <tr>
            <td colspan="2" align="center">
            <input type="submit"value="로그아웃" onclick="location.href='MainServlet?command=log_out'">
               &nbsp;&nbsp;
            <input type="button" value="회원정보수정" onclick="location.href='MainServlet?command=member_update_form&id=<%=request.getParameter("id")%>'">
            </td>
         </tr>
         <tr>
            <td colspan="2" align="center">
            <input type="button" class="btn btn-primary btn-lg btn-block" value="마이 블로그" onclick="location.href='MainServlet?command=my_blog&id=<%=request.getParameter("id")%>'">
            </td>
         </tr>
      </table>
      </div>
      </div>
      <h1> 마이 블로그 </h1>
      <div class="col-md-6">
<table class="table table-striped">
   <tr>
      <td   colspan="5" style="border: white; text-align: right">
         <input type="button" value="게시글 작성" onclick="location.href='MainServlet?command=blog_write_form&id=<%=id%>'">
      </td>
   </tr>
   <tr>
      <th>제목</th> <th>작성자</th> <th>작성일</th> <th>조회수</th>
   </tr>
   <c:forEach var="blog" items="${bloglist }">
      <tr class="record">
         <td>
            <a href="MainServlet?command=my_blog_view&num=${blog.num }">
               ${blog.title }
            </a>
         </td>
         <td>${blog.id }</td>
         <td><fmt:formatDate value="${blog.writedate }"/></td>
         <td>${blog.readcount }</td>
      </tr>
   </c:forEach>
   <tr>
      <td colspan="5" align="center">
         <input type="button" value="뒤로가기" onclick="location.href='MainServlet?command=login_success&id=<%=id%>&password=<%=password%>'">
      </td>
   </tr>
</table>
</div>
</div>
</body>
</html>