<%@page import="java.sql.*" %>
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
String email=(String)session.getAttribute("a");
String m=request.getParameter("name");
String o=request.getParameter("address");
String p=request.getParameter("contact");
String q=request.getParameter("pin");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
	String s="update vsr set name=?,contact=?,address=?,pin=? where email=?";
	PreparedStatement ps=con.prepareStatement(s);
	ps.setString(1, m);
	ps.setString(2, o);
	ps.setString(3, p);
	ps.setString(4, q);
	ps.setString(5, email);
	int i=ps.executeUpdate();
	out.println("updated successfully");
}catch(Exception e){
	
}


%>

</body>
</html>