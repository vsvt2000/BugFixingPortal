<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  Connection conn=null;
  
  try{
	  Class.forName("com.mysql.jdbc.Driver");
	  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bugfixingportal","root","1234");
	  String uname =request.getParameter("uname");
	  String psw=request.getParameter("psw");
	  
	  if (conn!=null){
		  PreparedStatement ps= conn.prepareStatement("select username,password from users where username=? and password=?");

		  ps.setString(1,uname);
		  ps.setString(2,psw);
		  ResultSet x = ps.executeQuery();
		  int y=0;
		  while(x.next()){
			  y+=1;
		  }
		  if(y>0){
			  out.print("<p name='res' value='yes'>logged in successfully</p>");
			  String redirectURL = "http://localhost:8083/bugfixing/dashboard.html";
			  session = request.getSession();
			  session.setAttribute("user", x.getString("username"));
			  response.sendRedirect(redirectURL);
		  }
		  else{
			  out.print("<p name='res' value='no'>Wrong username or password :(((( </p>");
			  String msg="Wrong username or password";
			  String redirectURL = "http://localhost:8083/bugfixing/?msg="+msg;
			  response.sendRedirect(redirectURL);
		  }
	  }
  }catch(Exception e){
	  out.print("Something is wrong.."+e);
  }
  %>
</body>
</html>