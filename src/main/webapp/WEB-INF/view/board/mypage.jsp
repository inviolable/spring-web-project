<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script>

 $(function(){
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
	 
 });
 function process1(){
	 $('#demo1').removeClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process2(){
	 $('#demo2').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process3(){
	 $('#demo3').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process4(){
	 $('#demo4').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process5(){
	 $('#demo5').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process6(){
	 $('#demo6').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process7(){
	 $('#demo7').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
 }
</script>
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
<div class="col-md-2" style="margin-left:150px;">
<!-- 사이드 바 메뉴-->
  <!-- 패널 타이틀1 -->
<div class="panel panel-info">
    <div class="panel-heading">
      <h3 class="panel-title">마이페이지</h3>
    </div>
    <!-- 사이드바 메뉴목록1 -->
    <ul class="list-group">
      <li class="list-group-item" onclick="process1();"><a href="#demo1">내가 쓴 글</a></li>
      <li class="list-group-item" onclick="process2();"><a href="#">내가 단 댓글</a></li>
      <li class="list-group-item" onclick="process3();"><a href="#">글 스크랩</a></li>
    </ul>
</div>
  <!-- 패널 타이틀2 -->
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">회원 정보</h3>
  </div>
    <!-- 사이드바 메뉴목록2 -->
      <ul class="list-group">
        <li class="list-group-item" onclick="process4();"><a href="#">회원 정보</a></li>
        <li class="list-group-item" onclick="process5();"><a href="#">내가 푼 문제</a></li>
      </ul>
</div>      
  <!-- 패널 타이틀3 -->
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">홈페이지 정보</h3>
  </div>
      <!-- 사이드바 메뉴목록3 -->
      <ul class="list-group">
        <li class="list-group-item" onclick="process6();"><a href="#">About</a></li>
        <li class="list-group-item" onclick="process7();"><a href="#">Help</a></li>
      </ul>
    </div>
</div> 

<div id="demo1">
<table class="table float-right" style="width:50%;margin-right:300px;">
 <thead>
 <tr>
  <th>게시판</th>
  <th>제목</th>
  <th>날짜</th>
  <th>조회수</th>
 </tr>
 </thead>
 <tbody>
  <
  <tr>
   <td>Q&A게시판</td>
   <td>자바 질문 좀요</td>
   <td>2022.01.08</td>
   <td>50</td>
  </tr>
  <tr>
   <td>문제풀이 게시판</td>
   <td>문제 풀어보았습니다</td>
   <td>2022.01.07</td>
   <td>50</td>
  </tr>
 </tbody>
</table>

 <div class="text-center" style="margin-right:300px;margin-top:250px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>

<div id="demo2">
<table class="table float-right" style="width:50%;margin-right:300px;">
 <thead>
 <tr>
  <th>게시판</th>
  <th>댓글</th>
  <th>날짜</th>
 </tr>
 </thead>
 <tbody>
  <tr>
   <td>문제풀이 게시판</td>
   <td>잘보았습니다</td>
   <td>2022.01.08</td>
  </tr>
  <tr>
   <td>자유게시판</td>
   <td>재밌네요</td>
   <td>2022.01.07</td>
  </tr>
 </tbody>
</table>
 <div class="text-center" style="margin-right:300px;margin-top:250px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>



<div id="demo3">
<table class="table float-right" style="width:50%;margin-right:300px;">
 <thead>
 <tr>
  <th>게시판</th>
  <th>제목</th>
  <th>작성자</th>
  <th>날짜</th>
  <th>조회수</th>
 </tr>
 </thead>
 <tbody>
  <tr>
   <td>자유게시판</td>
   <td>재미있는글</td>
   <td>이순신</td>
   <td>2022.01.08</td>
   <td>50</td>
  </tr>
  <tr>
   <td>자유게시판</td>
   <td>괴담</td>
   <td>심사임당</td>
   <td>2022.01.07</td>
   <td>50</td>
  </tr>
 </tbody>
</table>
 <div class="text-center" style="margin-right:300px;margin-top:250px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>



<div class="container" id="demo4">
 <p class="h4"><span class="text-danger">○</span> 기본 정보</p>
 <hr class="hr1">
 *아이디 <strong class="text-center a" style="margin-left:100px;">홍길동</strong><hr class="hr1">
 *비밀번호 <button style="margin-left:84px;" type="button" class="btn btn-light btn-sm border-primary">수정</button><hr class="hr1">
 *닉네임 <strong style="margin-left:100px;">가을비</strong>&nbsp;&nbsp;&nbsp; <button type="button" class="btn btn-light btn-sm border-primary">수정</button><hr class="hr1">
 *이메일 <strong class="text-center" style="margin-left:100px;">aaa@naver.com</strong>&nbsp;&nbsp;&nbsp; <button type="button" class="btn btn-light btn-sm border-primary">수정</button><hr class="hr1">
 *포인트 <strong class="text-center" style="margin-left:100px;">100점</strong><hr class="hr1">
</div>





 <div id="demo5" class="container">
 <div class="row">
<input type="text" class="col-sm-2 m-3 input-sm">
<input type="text" class="col-sm-2 m-3 input-sm">
<select class="col-sm-2 m-3 input-sm">
 <option>모든 결과</option>
 <option>1</option>
 <option>2</option>
</select>
<button type="button" class="btn btn-primary col-sm-2 m-3 input-sm">검색</button>
</div>
<div class="row">
<div class="col-md-10">
<table class="table table-striped table-bordered something">
 <thead>
 <tr>
  <th class="col-md-1">제출 번호</th>
  <th class="col-md-1">아이디</th>
  <th class="col-md-1">문제</th>
  <th class="col-md-1">제출한 시간</th>
 </tr>
 </thead>
  <tbody>
  
  <tr>
   <td class="m-3">37334072</td>
   <td class="text-primary m-3">dbscks97</td>
   <td class="text-danger m-3">1003</td>

   <td class="text-primary m-3">28초 전</td>
  </tr>
  <tr>
   <td class="m-3">37329279</td>
   <td class="text-primary m-3">dbscks97</td>
   <td class="text-danger m-3">1003</td>

   <td class="text-primary m-3">1시간 전</td>
  </tr>
  <tr>
  <td class="m-3" >37333478</td>
   <td class="text-primary m-3">dbscks97</td>
   <td class="text-danger m-3">1003</td>
   <td class="text-primary m-3">3시간 전</td>
   </tr>
 </tbody>
</table>
</div>
</div>

 <div class="text-center align-bottom" style="margin-top:170px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>
 
 <div id="demo6" class="text-center" style="margin-right:300px;">
 <br>
 KG 에듀원 아이티 뱅크 노량진 학원에 다니는 학생들이 만든<br>
  개발자 커뮤니티 홈페이지입니다.<br>
  어쩌고 저쩌고
  <br><br>
  전화번호 : 111-222-3333<br>
  주소 : 서울 동작구 장승배기로 171 아이비빌딩 301호
  
 </div>
 
 <div id="demo7" style="margin-right:300px;">
  <br>
  뭔 내용이 들어가야 될까
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