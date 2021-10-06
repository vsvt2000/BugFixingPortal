
import javax.servlet.http.*;
import javax.servlet.ServletException;
import java.io.*;


//@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = (String)request.getAttribute("uname");
		String pass = (String)request.getAttribute("psw");
		String name = (String)request.getAttribute("name");
		
		response.sendRedirect("login.html");
	}

}
