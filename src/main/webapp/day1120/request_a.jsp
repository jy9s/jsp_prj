<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->

<!-- jQeury CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
	$("#btnGet").click(function(){
		location.href="request_b.jsp";		
	})
	$("#btnGet2").click(function(){
		$("#getFrm").submit();
	})
	$("#btnPost").click(function(){
		$("#postFrm").submit();
	})
}); //ready


</script>

</head>
<body>
<div id="get">
<strong>GET방식</strong><br>
<a href="request_b.jsp">GET링크요청</a><br>
<input type="button" value="요청" id="btnGet" class="btn btn-success">
<form action="request_b.jsp" method="get" id="getFrm">
<input type="button" value="GET Form submit 요청" class="btn btn-info" id="btnGet2">
</form>
</div>
<div>
<strong>POST방식</strong><br>
<form action="request_b.jsp" method="post" id="postFrm">
<input type="button" value="POST Form submit 요청" class="btn btn-primary" id="btnPost">
</form>

</div>
</body>
</html>