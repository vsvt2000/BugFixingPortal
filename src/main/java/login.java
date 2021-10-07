import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.ServletException;
import java.io.*;


//@WebServlet("/Register")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();

        Connection conn=null;
        
        try{
        	String uname = (String)request.getParameter("uname");
            String pass = (String)request.getParameter("psw");
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bugfixingportal","root","1234");
             
            if (conn!=null){
                try{
                	
                PreparedStatement ps= conn.prepareStatement("select * from user_details where username=? and password=?");
                
                ps.setString(1,uname);
                ps.setString(2,pass);
                ResultSet x = ps.executeQuery();
                out.print("in");
                int y=0;
                String y1="";

                while(x.next()){
                    y1=x.getString("username");
                    y+=1;
                }
                
                if(y>0){
                    //out.print("registered successfully");
                    
                        
                            HttpSession log = request.getSession();
                            log.setAttribute("user", uname);
                            
                            response.sendRedirect("dashboard.jsp");
                        
                    }
                    
                
                else{
                    //out.print("registration failed .Acc already exists!:(((( ");
                    String msg="login failed . Invalid Credentials";
                    response.sendRedirect("login.html?msg="+msg);
                }
                }catch(Exception e){
//                    String msg="registration failed .Acc already exists with error!:(((( "+e+name+uname+pass;
//                    String redirectURL = "http://localhost:8080/BFP/?msg="+msg;
//                    response.sendRedirect(redirectURL);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
//    	response.sendRedirect("dashboard.jsp");
    	}}