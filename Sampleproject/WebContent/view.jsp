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
<h1 align="center">view your details Here</h1>
<table  align="center" border="2">
<%
String ss=(String)session.getAttribute("a");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
	String s="select * from vsr where email=?";
	PreparedStatement ps=con.prepareStatement(s);
	ps.setString(1, ss);
	ResultSet rs=ps.executeQuery();
	%>
	<tr><td>Name</td><td>Email</td><td>contact</td></tr>
	<% 
	while(rs.next()){
		%>
	<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td></tr>
		
		
<% }%>
		
	
	<% 
}catch(Exception e){
	e.printStackTrace();
	
}



%>
</table>
</body>
</html>