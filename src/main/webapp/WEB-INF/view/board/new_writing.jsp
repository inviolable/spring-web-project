<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script>
</script>
</head>
<body>
 <% Integer test = (Integer)application.getAttribute("test");
    out.println(test); 
    request.setAttribute("title", "11111");
    
 %>
 <form action="write_complete" method="post">
 <input type="text" placeholder="제목을 입력하세요" name="title" size="50"><br>
 <input type="text" placeholder="이름을 입력하세요" name="writer" size="50"><br>
 <textarea name="cont" placeholder="내용을 입력하세요" rows=20 cols=50></textarea><br><br>
  
 <input type="submit" value="새 글 작성" />
 <input type="reset" value="취소" />
 </form>
</body>
</html>