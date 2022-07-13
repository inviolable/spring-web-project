<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:set var="total" value=0/>
<c:forEach var="i" begin="1" end="100" step="1">
 <c:set var="total" value="${total+i}"/>
</c:forEach>
1에서 100까지의 합 : <c:out value="${total}"/>
</body>
</html>