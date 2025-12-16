<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//POST방식 일때의 한글 처리
request.setCharacterEncoding("UTF-8");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
<strong><%=request.getMethod() %></strong>방식 요청<br>

<%
String[] lang = request.getParameterValues("language");
String[] license = request.getParameterValues("license");
%>


<strong>선택 언어</strong>

<%
if(lang!=null){
		
	
for(int i = 0; i<lang.length;i++){
	%>
	<%=lang[i] %>
<%
}}else{
	%>
	관심언어가 없습니다.
<%}%>

	
<%-- }
}catch(NullPointerException nfe){
%>
	
<%
}
% --%>

<br>
<strong>자격증</strong>
<%
if(license.length == 1 && license[0].trim().isEmpty()){
	%>자격증이 없습니다.<%
}
%>
<%
	for(int i= 0; i<license.length; i++){
%>
		<%=license[i]%>
		
<%
	}
%>


</div>





</body>
</html>