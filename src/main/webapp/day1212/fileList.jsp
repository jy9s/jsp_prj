<%--page directive --%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../fragments/siteProperty.jsp" %>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>파일 목록</title>
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
					<h2>파일 목록</h2>
					<table class="table table-hover">
					<thead>
					<tr>
					<th>번호</th>					
					<th>파일명</th>					
					<th>크기(byte)</th>					
					<th>업로드일</th>					
					</tr>					
					</thead>					
					<tbody>
					<%
					File directory = new File("C:/dev/workspace/jsp_prj/src/main/webapp/upload");
					File[] files = directory.listFiles(); //해당 파일에 있는 모든 파일이 넘어온다.					
					pageContext.setAttribute("files", files);
					
					File file=null;
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd EEEE a HH:mm:ss");
					
					String urlName="";
					
					
					for(int i=0; i< files.length; i++ ){
						file = files[i];
						urlName=file.getName();
						if(urlName != null){
							//파일명이 QueryString에 영향을 주는 문자열이 있다면 download.jsp로 보내지지 않으므로
							//encoding이 필요하다.
							urlName=URLEncoder.encode(urlName,"UTF-8");
						}
						
					%>					
					<c:if test="${empty files }">
					<tr>
					<td colspan="4">업로드된 파일이 없습니다.</td>
					</tr>
					</c:if>
					<tr>
					<td><%=i+1%></td>
					<td><a href="${CommonURL}/day1212/download.jsp?fileName=<%=urlName%>"><%=file.getName()%></a></td>
					<td><%=file.length() %></td>
					<td><%=sdf.format(new Date(file.lastModified()))%></td>					
					</tr>
					<%
					}
					%>
					
					<%-- <td><c:out value="${file.length}"/></td>
					<td><c:out value="${file.lastModified}"/></td> --%>
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
