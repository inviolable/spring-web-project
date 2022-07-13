<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <input type="text" name="title" size="50" value="${writing.getTitle()}" readonly><br>
 <input type="text" name="writer" size="50" value="${writing.getWriter()}" readonly><br>
 <textarea name="cont" rows=20 cols=50 readonly>${writing.getBody()}</textarea><br><br>
 <form method="post" action="delete">
 <input type="submit" value="글 삭제"/>
 <input type="hidden" value="${writing.getNum()}" name="num"/>
 </form>
 
</body>
</html>