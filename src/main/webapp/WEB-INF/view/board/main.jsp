<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
	<link rel="stylesheet" href="../css/main.css" type="text/css">
    <title>Java Community</title>
 <link href="css/main.css" rel="stylesheet" type="text/css">
 <script>
 window.onload=function(){
	 alert("닉네임:${nickname}");
 }
 </script>
  
  </head>
  
  
 <body>

 <%@ include file="header.jsp" %>
       
<div class="container-fluid idx">

</div>
<div class="row">
   <div class="col-md-5 a">
		<div class="card c">
		  <a class="card-header h" style="font-size:20px" href="#">전체글보기</a>   	  		  		
		  <div class="card-body">
		    <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			        <td>Shape of you</td>
					<td>Julliet</td>
					<td>2020.12.3</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>Bad boy</td>
					<td>Chacha</td>
					<td>2019.09.28</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>On my way</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
		<div class="card c">
		  <a class="card-header h" style="font-size:20px" href="free">자유게시판</a>
		  <div class="card-body">
		     <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			        <td>Peaches</td>
					<td>Max</td>
					<td>2020.11.18</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>Bad boy</td>
					<td>Chacha</td>
					<td>2019.09.28</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>Jacob</td>
					<td>Thornton</td>
					<td>2021.2.4</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
	</div>
	<div class="col-md-5 b">
		<div class="card c">
		  <a class="card-header h" style="font-size:20px"  href="#">주간베스트</a>
		  <div class="card-body">
		     <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
				    <td>Jacob</td>
					<td>Thornton</td>
					<td>2021.2.4</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>abcdefu</td>
					<td>James</td>
					<td>2020.8.7</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>Stay</td>
					<td>Marrsella</td>
					<td>2022.1.13</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
		<div class="card c">
		  <a class="card-header h" style="font-size:20px" href="notice">공지사항</a>
		  <div class="card-body">
		    <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			        <td>Dynamite</td>
					<td>Juniper</td>
					<td>2021.09.27</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>Peaches</td>
					<td>Max</td>
					<td>2020.11.18</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>Ashes</td>
				    <td>Jenny</td>
					<td>2021.03.12</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
	</div>
</div>
<div class="row">
						<center>
                       <div class="col-lg-6 d">
                            <!-- Blog post-->                        
                            <div class="card mb-3">
                                <a href="#!"><img class="card-img-top" src="/images/question2.webp" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">2021.11.30</div>
                                    <h2 class="card-title h4">오늘의 문제!</h2>
                                    <p class="card-text">문제 설명</p>
                                    <a class="btn btn-primary" href="question">풀어보기</a>                               
                                </div>
                             </center>
                           </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" ></script>
    -->
    <%@ include file="footer.jsp" %>
  </body>
</html>