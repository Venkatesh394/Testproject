 <%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
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
String orginal=(String)session.getAttribute("b");
String old=request.getParameter("old");
String neww=request.getParameter("new");
String con=request.getParameter("con");
if(orginal.equals(old) &&  neww.equals(con)){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
		String s="update vsr set password=? where email=?";
		PreparedStatement ps=conn.prepareStatement(s);
		ps.setString(1,neww);
		ps.setString(2,email);
		int i=ps.executeUpdate();
		out.println("Password updated successfully");
	}catch(Exception e){
	 e.printStackTrace();
	}
}






%>


</body>
</html>