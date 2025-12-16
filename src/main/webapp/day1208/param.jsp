<%--page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="true"
    %>
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

	$("#btnQs").click(function(){
		paramQueryString();
	});
	
	$("#btnJson").click(function(){
		paramJSON();
	});
	
}); //ready

function paramQueryString(){
	//queryString 형식으로 web parameter 전송
	//HTML Form Control의 name속성의 이름과 상관없이 parameter명을 만들 수 있다.
	var param="na="+$("#name").val() + "&age="+$("#age").val();

	$.ajax({
		url:"paramProcess.jsp",
		type:"post",
		data: param,
		dataType:"JSON",
		error:function(xhr){
			$("#output").html(xhr.status + " / " + xhr.statusText);
		},
		success:function(jsonObj){
			//객체명.이름
//			alert(jsonObj.name + " / " + jsonObj.age);
			var output = "<table class='table table-hover'>";
			output+=`<tr><td>${jsonObj.name}</td></tr>`;
			output+=`<tr><td>${jsonObj.age}살</td></tr>`;
			output+=`<tr><td>${jsonObj.birth}년대생</td></tr>`;
			output+="</table>"
			$("#output").html(output);
		}
		
	});
	
	
}


function paramJSON(){
	if($("#name").val()==""){
		alert("이름은 필수 입력!!");
		return;
	}
	//JSONObject 형식으로 web parameter 전송
	var param={na : $("#name").val(), age : $("#age").val() }
	var output="";
	$.ajax({
		url:"paramProcess.jsp",
		type:"get",
		data: param,
		dataType:"JSON",
		error:function(xhr){
			console.log(xhr.statusText + " / " + xhr.status);
		},
		success:function(jsonObj){
			
			output+=`<tr><td>${jsonObj.name}</td>`;
			output+=`<td>${jsonObj.age}</td>`;
			output+=`<td>${jsonObj.birth}</td></tr>`;
			
			//$("tbody").last().append(output);
			$("tbody:last").append(output);
			$("#name").val("");
			$("#age").val("");
			$("#name").focus();
			
		}
	}); //ajax
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
					<strong>AJAX Parameter 요청</strong><br>
					<label>이름</label>
					<input type="text" name="name" id="name" autofocus="autofocus"/><br>
					<label>나이</label>
					<input type="text" name="age" id="age"/><br>
					
					<button id="btnQs" class="btn btn-success">QueryString방식</button>
					<button id="btnJson" class="btn btn-info">JSONObject방식</button>
					
				</div>
				
				<div id="output"></div>
				<div id="output2">
					<table id="tab" class="table table-hover">
					<thead>
					<tr>
					<th>이름</th>
					<th>나이</th>
					<th>태어난해</th>					
					</tr>
					</thead>
					
					<tbody>
					
					</tbody>
					</table>
				</div>
				
			</div>
			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<jsp:include page="../fragments/footer.jsp"></jsp:include>
	</main>
</body>
</html>