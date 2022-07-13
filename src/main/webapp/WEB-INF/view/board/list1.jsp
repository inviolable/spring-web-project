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
 <c:if test="${empty m1}">
 저장된 회원 정보가 없습니다. 
 </c:if>
 <c:forEach var="data" items="${m1}" varStatus="loop">
 id=${data.id}<br>
 pwd=${data.pwd}<br>
 name=${data.name}<br>
 email=${data.email}<br>
 phone=${data.phone}<br>
 <hr>
 </c:forEach>

</body>
</html>