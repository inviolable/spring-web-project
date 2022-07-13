<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<title>board</title>



<script>

	$(document).on('click', '#btnSave', function(e){

		e.preventDefault();

		

		$("#form").submit();

	});

	

	$(document).on('click', '#btnList', function(e){

		e.preventDefault();

		

		location.href="board01";

	});
	
	var reply_toggle = true;
	var reply_add = $('<div id="re_create">' +
	'<form method="post" action="reply_add">' +
    '<div style="width:740px;">' +
        
    '<textarea style="resize:none" rows="5" cols="100" name="reply_cont" id="reply_cont"></textarea>' +
    '<input type="hidden" name="reply_id" value="${id}"/>' +
    '<input type="hidden" name="reply_writing_no" value="${no}"/>' +
    '<input type="hidden" name="reply_level" value="1"/>' +
    '<br><br><p align="right">' +    
    '<input type="submit" id="reply01_add" value="댓글 추가">' +    
    '</p></div></form></div>');
    
	$(document).ready(function(){
		$(reply_add).css("margin-left","100px");
		$(reply_add).insertAfter("#re_origin");
	});
	
	var id = null;
	$(document).on('click', '.re_re', function(e){
		e.preventDefault();
		
		//alert(e.target.id);
		var id2 = "#" + e.target.id + "aa";
		
		if(id == null)
			id=id2;
		
		if(id != id2)
			reply_toggle=true;
		id = id2;
		
		if(reply_toggle == true){
			$(reply_add).css("margin-left","");
			$(reply_add).insertAfter(id);
			reply_toggle = false;
			alert("추가");
		}
		else{
			$(reply_add).detach();
			$(reply_add).css("margin-left","100px");
			$(reply_add).insertAfter("#re_origin");
			reply_toggle = true;
			alert("분리");
		}
		
		});	
</script>

<style>

body {

  padding-top: 70px;

  padding-bottom: 30px;

}



</style>

</head>

<body>

	<article>

		<div class="container" role="main">

			<h2>board Form</h2>

			<form name="form" id="form" role="form" method="post" action="editBoard">

				<div class="mb-3">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요" value="${b.title}" readonly>

				</div>

				

				<div class="mb-3">

					<label for="reg_id">작성자</label>

					<input type="text" class="form-control" name="writer" id="reg_id" placeholder="이름을 입력해 주세요" value="${b.writer}" readonly>

				</div>

				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" readonly>${b.content}</textarea>

				</div>

				

				

			

			</form>
			<br>

			<div  >

				<button type="button" class="btn btn-sm btn-primary" id="btnSave">수정</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

		</div>

	 
	</article>

	<c:forEach var="i" items="${r}">
	<div style="margin-left:100px;width:740px;">
	<c:if test="${i.reply_previous == null}">

	<c:set var="root_id" value="${i.reply_id}"/>
    <hr>
    <p style="color:red;">${i.reply_id}</p>
    <pre class="re_re" id="${i.reply_no}">${i.reply_cont}</pre>
    <p style="font-size:6px;" id="${i.reply_no}aa">${i.regdate}</p>
    <hr>
    
    </c:if>
    <c:if test="${i.reply_previous == root_id}">

    <hr>
    <p style="color:red;">${i.reply_id}</p>
    <pre class="re_re" id="${i.reply_no}">${i.reply_cont}</pre>
    <p style="font-size:6px;" id="${i.reply_no}aa">${i.regdate}</p>
    <hr>
   
    </c:if>    
    </div>     
    </c:forEach>
    
    <br>
    
    <div id="re_origin">
    </div>
    <!--  
    <div id="re_create">
    <form method="post" action="reply_add">
    <div style="margin-left:100px;width:740px;">
        
    <textarea style="resize:none" rows="5" cols="100" name="reply_cont" id="reply_cont"></textarea>
    <input type="hidden" name="reply_id" value="${id}"/>
    <input type="hidden" name="reply_writing_no" value="${no}"/>
    <input type="hidden" name="reply_level" value="1"/>
    <br>
    <br>
    <p align="right">    
    <input type="submit" id="reply01_add" value="댓글 추가">    
    </p>
    </div>
    </form>
    </div>

-->



</body>
</html>