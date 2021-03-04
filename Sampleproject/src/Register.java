

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String a=request.getParameter("a");
		String b=request.getParameter("b");
		String c=request.getParameter("c");
		String d=request.getParameter("d");
		String e=request.getParameter("e");
		String f=request.getParameter("f");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
			String s="insert into vsr values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1,a);
			ps.setString(2,b);
			ps.setString(3,c);
			ps.setString(4,d);
			ps.setString(5,e);
			ps.setString(6,f);
			int i=ps.executeUpdate();
			if(i>0){
			response.sendRedirect("Login.html");
			}else{
			response.sendRedirect("Register.html");
			}
			}catch (Exception ee) {
			ee.printStackTrace();

			}
}
}
