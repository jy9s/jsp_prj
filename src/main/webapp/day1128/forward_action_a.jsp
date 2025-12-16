<%--page directive --%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("UTF-8"); //한글을 parameter로 전달할 때에는 encoding하여 넘겨야 한다.
	
	//업무 처리한 결과 > List(web parameter로 전달될 수 없다.)
	List<String> names=new ArrayList();
	names.add("루피");
	names.add("쵸파");
	names.add("샹디");
	names.add("조로");
	
	request.setAttribute("names", names); //scope객체에 데이터를 할당 > scope객체 사용해서 값 받음.
	
	String name="민병조";
	int age=20;
	
	
%>
<!-- parameter가 없는 경우 -->
<%-- <jsp:forward page="forward_action_b.jsp"/> --%>

<!-- parameter가 있는 경우 -->
<jsp:forward page="forward_action_b.jsp">
	<jsp:param name="name" value="<%=name%>"/>
	<jsp:param name="age" value="<%=age%>"/>	
</jsp:forward>

