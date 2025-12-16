<%--page directive --%>
<%@page import="kr.co.sist.emp.EmplyoeeService"%>
<%@page import="kr.co.sist.emp.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String paramDeptno = request.getParameter("deptno");

int deptno=0;
if(paramDeptno != null){
	deptno = Integer.parseInt(paramDeptno);	
}

EmplyoeeService es = EmplyoeeService.getInstance();
out.print(es.seacrhEmp(deptno));

%>
