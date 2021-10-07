
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.ServletException;
import java.io.*;


//@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = (String)request.getAttribute("uname");
		String pass = (String)request.getAttribute("psw");
		String name = (String)request.getAttribute("name");
		PrintWriter out = response.getWriter();
		
		try {
			java.sql.Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/"+"bugfixingportal", "root", "1234");
            Statement stmt = con.createStatement();
            
            int change = stmt.executeUpdate("insert into users values(\""+uname+"\",\""+pass+"\")");
            if(change>0) {
            	change = stmt.executeUpdate("insert into user_details values(\""+uname+"\",\""+name+"\")");
            	HttpSession session = request.getSession();
            	session.setAttribute("status", "1");
            	response.sendRedirect("login1.jsp");
            }
		}
		catch (Exception e) {
			out.println(e);
		}
	}

}
