<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ad1=request.getParameter("a");
String ad2=request.getParameter("b");
if(ad1.equals("admin@gmail.com") && ad2.equals("admin")){
	response.sendRedirect("adminhome.html");
}else{
	response.sendRedirect("admin.jsp");
}
	


%>
</body>
</html>