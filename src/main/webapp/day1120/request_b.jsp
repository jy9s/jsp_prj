<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String msg = "style='color:#FF0000'";
if(request.getMethod().equals("GET")){
	msg = "style='color:#0000FF'";
}%>

<strong><span <%=msg %>><%= request.getMethod() %></span></strong>방식의 요청.
<br>
<a href="javascript:history.back()">뒤로</a>
</body>
</html>