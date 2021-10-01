<%@page import="java.sql.*" %>
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
	  String name =request.getParameter("name");
	  String uname =request.getParameter("uname");
	  String psw=request.getParameter("psw");
	  
	  if (conn!=null){
		  try{
		  PreparedStatement ps= conn.prepareStatement("insert into users values(?,?,?)");

		  ps.setString(1,uname);
		  ps.setString(2,name);
		  ps.setString(3,psw);
		  int x = ps.executeUpdate();
		  if(x>0){
			  //out.print("registered successfully");
			  String msg="Registered Successfully!";
			  String redirectURL = "http://localhost:8083/bugfixing/?msg="+msg;
			  response.sendRedirect(redirectURL);
		  }
		  else{
			  //out.print("registration failed .Acc already exists!:(((( ");
			  String msg="registration failed .Acc already exists!:(((( ";
			  String redirectURL = "http://localhost:8083/bugfixing/signup.html?msg="+msg;
			  response.sendRedirect(redirectURL);
		  }
		  }catch(Exception e){
			  String msg="registration failed .Acc already exists!:(((( ";
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