<%--page directive --%>
<%@page import="day1128.ParamDTO"%>
<%@page import="kr.co.sist.user.member.WebMemberLoginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../fragments/siteProperty.jsp" %>

<%
//POST방식 일때만 요청되어야 한다.
if(!"POST".equals(request.getMethod())){
%>
<c:redirect url="${CommonURL}/index.html"/>
<%	
}

%>


<jsp:useBean id="lDTO" class="kr.co.sist.user.member.LoginDTO" scope="page"/>
<jsp:setProperty name="lDTO" property="*"/>

<%
WebMemberLoginService wmls = WebMemberLoginService.getInstance();
ParamDTO pDTO = wmls.searchLogin(lDTO, spVO.getKey());


if(pDTO!=null){ //로그인 성공
	//세션에 값을 할당
	session.setAttribute("userId", pDTO.getId());
	session.setAttribute("userName", pDTO.getName());
	session.setAttribute("userBirth", pDTO.getBirth());
	session.setAttribute("userProfile", pDTO.getProfile());
	//접속 history 남기고
	//페이지를 이동
%>
<c:redirect url="${CommonURL}/index.jsp"/>
<%
}
%>



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

}); //ready


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
					아이디나 비밀번호를 확인해주세요.
					<a href="javascript:history.back()">다시 로그인</a>
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