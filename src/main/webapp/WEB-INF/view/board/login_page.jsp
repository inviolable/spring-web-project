<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="resources/css/login_page_style.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

//$(document).ready(function(){
	//$('[value="로그인"]').click(function(){
		// $(location).attr('href',"join_4.jsp");
//	});
	
	 
//});
function back_func(){
		 history.go(-1);
} 
</script>


</head>
<body>
  <%
    String clientId = "MVMuqOCudcgJ4QRDv7Xs";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8005/spring_practice_02/naver_callback", "UTF-8");
    SecureRandom random = new SecureRandom();
    
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
<div id="layout">
	
	 <section id="loginAndjoin">
		<h2><img src="resources/images/login-1.png" alt="로그인">ID or Social 로그인</h2>
		 <form method="post" action="login_ok">
			 <input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
			 <input type="password" id="pass" name="pass" placeholder="비밀번호를 입력하세요">
			 <input type="submit" value="로그인" id="login_button">
			 <a href="<%=apiURL%>" id="naver"><img src="resources/images/naver_login.jpg" alt="naver"></a>
			 <div id="additional">
				<a class="a1" href="join">회원가입</a> | <a class="a1" href="#">아이디 찾기</a> | <a class="a1" href="#">비밀번호 찾기</a>
			 </div>
		 </form>
		 <hr>
		 <button id="back" onclick="back_func()">되돌아가기</button>
	 </section>
</div>
 <footer>
	 <span style="color:#00C6ED; font-weight:900; font-size:1.3em;">Java Community</span>&nbsp;
	 <span style="color:gray;">Copyright</span>&nbsp;
	 <span>2022년</span>&nbsp;
	 <span>All Rights Reserved.</span>
 </footer>
</body>
</html>