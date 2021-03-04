

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("a");
		String b=request.getParameter("b");
		HttpSession hs=request.getSession();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venky","root","java");
			String s="select * from vsr where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1,a);
			ps.setString(2,b);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				response.sendRedirect("welcome.jsp");
				hs.setAttribute("a",a);
				hs.setAttribute("b", b);
			}
			else{
				response.sendRedirect("Login.html");
			}
		}catch(Exception ee){
			ee.printStackTrace();
			
}
}
}
