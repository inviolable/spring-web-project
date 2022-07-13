<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->

<style>
.btn-light{
 border-radius:10px;
}

.hr1{
 margin: 10px 0px 10px 0px;
}
</style>
</head>
<body>



<c:set var="pageCount" value="${count/10+1}"/>

<c:set var="k" value="${count-(i-1)*10}"/>

 <div id="demo1" class="row justify-content-md-center">
<table class="table" style="width:50%;">
 <thead>
 <tr>
  <th>글번호</th>
  <th>제목</th>
  <th>작성날짜</th>
  <th>조회수</th>
 </tr>
 </thead>
 <tbody>
 <c:if test="${k>=count}">
 <c:set var="k" value="${count}"/>
 </c:if>
   <c:forEach var="b" items="${b2}" begin="0" end="9" step="1">
  <tr>
   <td>${k}</td>
   <td><a href="read_content?bno=${b.bno}">${b.title}</a></td>
   <td>${b.regdate}</td>
   <td>${b.viewcnt}</td>
  </tr>
  <c:set var="k" value="${k-1}"/>
  </c:forEach>
 </tbody>
</table>

 <div class="text-center fixed-bottom" style="margin-bottom:100px;">
  <form action="new_write" method="post">
<ul class="pagination">


  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <c:forEach var="i1" begin="1" end="${pageCount}" step="1">
 <c:if test="${i1==i}">
 <li class="page-item"><a class="page-link" href="board01?page=${i1}" style="color:red;">${i1}</a></li>
 </c:if>
 <c:if test="${i1!=i}">
  <li class="page-item"><a class="page-link" href="board01?page=${i1}">${i1}</a></li>
 </c:if>
  </c:forEach>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>

 <input class="btn btn-primary float-right" type="submit" value="글쓰기" style="width:100px;margin-left:50px;">
 </form>
</ul>

</div>

</div>


  <footer class="fixed-bottom" style="clear:both;">
    <ul class="nav justify-content-center border-bottom">
      <li class="nav-item"><a href="#" class="nav-link text-muted">공지사항</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-muted">자유게시판</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-muted">Q&A</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-muted">취업정보상담</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-muted">문제풀이</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-muted">소개</a></li>
    </ul>
    <p class="text-center text-muted">© 2021 Company, Inc</p>
  </footer>



</body>
</html>