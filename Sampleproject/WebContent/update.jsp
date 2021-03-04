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
<h2 align="center">UPDATE YOUR DETAILS HERE</h2>
<table align="center"  border="1">
<%
String email=(String)session.getAttribute("a");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
	String ss="select * from vsr where email=? ";
	PreparedStatement ps=con.prepareStatement(ss);
	ps.setString(1, email);
	ResultSet rs=ps.executeQuery();
	%>
	
	<% 
	while(rs.next()){
		%>
<form action="Updatesuccess.jsp">		
<tr><td>Name</td><td><input type="text" value="<%=rs.getString(1)%>"    name="name"></td></tr>		
<tr><td>Contact</td><td><input type="text" value="<%=rs.getString(4)%>"	name="contact"></td></tr>	
<tr><td>Address</td><td><input type="text" value="<%=rs.getString(5)%>"	name="address"></td></tr>	
<tr><td>Pin</td><td><input type="text" value="<%=rs.getString(6)%>" 	name="pin"></td></tr>	
<tr><td><input type="submit" value="UPDATE RECORD"></td></tr>
</form>	
		<% 
	}%>
	
	
	<% 
}catch(Exception e){
	
}



%>
</table>
</body>
</html>