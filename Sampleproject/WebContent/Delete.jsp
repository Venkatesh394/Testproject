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
<table>
<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
	String s="select * from vsr";
	PreparedStatement ps=con.prepareStatement(s);
	ResultSet rs=ps.executeQuery();
	%>
	<form action="Deleted.jsp">
	<select name="email">
	<% while(rs.next()){
		%>
	<option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
	<
		<% 
 }%>
 <td><input type="submit" value="Delete"></td>
		</select></form>

	<% 

 
}catch(Exception e){
	e.printStackTrace();
	
}



%>
</table>
</body>
</html>