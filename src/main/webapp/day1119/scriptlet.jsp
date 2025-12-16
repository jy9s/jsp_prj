<%--page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>


function result(num){
	var j = 2*(num);
	alert(j);
	
}


</script>


<body>

<% //scriptlet => JSP가 Java로 변경될때 _jspService()안에 코드가 생성된다.
String name="조나영";
%>
안녕하세요? <span><%=name%></span>님
<ul>

<%! int today=19; %>
<%for(int i=0;i<10;i++){
%>
<li><%=i %></li>

<%	
}
%>
</ul>

<table>
<tr>
<%for(int i=0;i<9;i++){
%>
<td style="border:1px solid #333" onclick="result(<%=(i+1)%>)">
2*<%=(i+1)%>
</td>
<%	
}
%>
</tr>
</table>

<div>
<%for(int i=1; i<7;i++){ %>
<h<%=i %>>안녕하세요?</h<%=i %>>
<%}//end for %>
</div>


<div>
구구단 모든단을 테이블로 출력
</div>

<table border="1">
	<%for(int i=1;i<=9;i++){ %>
		<tr>
		<%for(int j=2;j<=9;j++){ %>
			<td><%=j%>*<%=i%>=<%=i*j%></td>
		<%}//end for j%>
		</tr>		
	<%}//end for i%>
</table>



</body>
</html>