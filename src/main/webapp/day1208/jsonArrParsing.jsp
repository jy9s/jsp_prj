<%--page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../fragments/siteProperty.jsp" %>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>JSP템플릿</title>
<link rel ="shortcut icon" href="http://192.168.10.72/html_prj/common/images/favicon.ico"/>

<script src="http://192.168.10.72/jsp_prj/common/js/color-modes.js"></script>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->
<jsp:include page="../fragments/bootstrap_css.jsp"></jsp:include>
<style type="text/css">
#wrap{margin:0px auto; width:1200px; height:1000px;} 
#header{height:150px;}
#container{height:700px;}
#footer{height:150px;}
</style>
<!-- jQeury CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
	$("#btn").click(function(){
		jsonArrParsing();
	});
	
	
}); //ready


function jsonArrParsing(){
	$.ajax({
		url:"http://localhost/jsp_prj/day1205/jsonArr.jsp",
		type:"get",
		dataType:"JSON",
		error:function(xhr){
			alert("문제발생");
			console.log(xhr.statusText + " / " + xhr.status);
		},
		success:function(jsonArr){
			test(jsonArr);
		}
	});
}


function test(jsonArr){
	var output="";
	$.each(jsonArr, function(ind,jsonObj){
		output+=`<div>${ind+1}.
		<input type="text" name="name" value="${jsonObj.name}"/>
		<input type="text" name="age" value="${jsonObj.age}"/>
		<input type="button" class='btn btn-danger' value="삭제" onclick="del('${jsonObj.name}')"/>
		</div>`;
	}); //each
	
	$("#output").html(output);
}


</script>


<meta name="theme-color" content="#712cf9">
<link href="http://192.168.10.72/jsp_prj/common/css/carousel.css" rel="stylesheet">

</head>
<body>

	<header data-bs-theme="dark">
		<jsp:include page="../fragments/header.jsp"></jsp:include>
	</header>
	<main>
		<jsp:include page="../fragments/carousel.jsp"></jsp:include>
		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->
		<div class="container marketing">
			<!-- Three columns of text below the carousel -->
			<!-- START THE FEATURETTES -->
			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7">
					<button class="btn btn-success" id="btn">JSONArray Parsing</button>
				</div>
				
				<div id="output"></div>
			</div>
			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<jsp:include page="../fragments/footer.jsp"></jsp:include>
	</main>
</body>
</html>