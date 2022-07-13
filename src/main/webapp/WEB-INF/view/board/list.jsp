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
<style>
 #pagelist{
  text-decoration:none;
 }
 
 #pagelist:hover{
  color:red;
 }

 #a1{
  text-decoration:none;
 }
 
 #a1:hover{
  color:green;
 }
</style>
<script>
 //var pagecount=${count}/10;
 //var max = ${count} - (page-1)*10;
 //var min = ${count} - (page)*10 + 1;
 <%
  String page11 = request.getParameter("page");
  if(page11 == null)
	  page11 = "1";
  int pagenum = Integer.parseInt(page11);
  pageContext.setAttribute("page", pagenum); 
 %>
 <c:set var="pagecount" value="${count/10}"/>
	 <c:set var="page" value="${page}" />
	 <c:set var="max" value="${count - (page-1)*10}"/>
	 <c:set var="min" value="${count - (page)*10 + 1}"/>
	 <c:if test="${min<1}">
	 <c:set var="min" value="1"/>
 </c:if>
 
</script>
</head>
<body>
 ${count}<br>
 max=${max}<br>
 min=${min}<br>
 <table border="1" width="500" >
 <tr>
 <th width=100>번호</th><th width=300>제목</th><th width=100>글쓴이</th>
 </tr>
 <c:set var="i" value="${count}"/>
 <c:forEach var="data" items="${list}" varStatus="loop">
 <c:if test="${i<=max && i>=min}">
 <tr>
 <th width=100>${i}</th><th width=300><a id="a1" href="viewWriting?num=${i}">${data.getTitle()}<a></a></th><th width=100>${data.getWriter()}</th>
 </tr> 
 </c:if>
 <c:set var="i" value="${i-1}"/>
 </c:forEach>
 </table>
 <form method="post" action="new_writing">
  <input type="submit" value="새 글 작성"/>
 </form>
 <c:forEach var="i" begin="1" end="${pagecount+1}" step="1">
  <a id="pagelist" href="list?page=${i}">${i}  </a>
 </c:forEach>
</body>
</html>