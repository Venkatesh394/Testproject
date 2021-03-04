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
<table  align="center" border="1">
<h1 align="left">view all user details here</h1>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
	String s="select * from vsr";
	PreparedStatement ps=con.prepareStatement(s);
	ResultSet rs=ps.executeQuery();
	%>
	<tr><td>Name</td><td>Email</td><td>Contact</td><td>address</td><td>pin</td></tr>
	<% 
	while(rs.next()){
		%>
	<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td></tr>
		<%}%>
	
	<%}catch(Exception e){
		e.printStackTrace();
	}
	

	%>

</table>
</body>
</html>