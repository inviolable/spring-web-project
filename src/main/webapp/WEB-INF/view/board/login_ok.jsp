 <%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="spring.*"
	pageEncoding="UTF-8"
	isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:set var="result" value="${result}" /> 
 <c:if test="${result eq 'success'}">
  <%  
   response.sendRedirect("board01");
 %>
 </c:if>
 <c:if test="${result eq 'fail'}">
 <script>
  alert("아이디, 비밀번호가 일치하지 않습니다.");
  history.go(-1);
  </script>
 </c:if>

</body>
</html>