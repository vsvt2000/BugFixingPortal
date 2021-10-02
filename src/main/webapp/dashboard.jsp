<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="icon" href="images/logo.png" type="image/icon type" class="logo">
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="javascript/common.js"></script>
</head>

<body>
    <div class="outer" >
        <div class="header1 row" style="margin:0px 0px 0px 0px">
            <nav class="navbar navbar-dark bg-black navbar-brand">
                <div class="logo col-md-2 ">
                    
                    <div class="dropdown">
                        <button class="dropbtn"><img class="img1" src="images/logo.png" alt="logo"></button>
                        <div class="dropdown-content">
                          <a href="aboutus.html">About Us</a>
                          <a href="viewprofile.jsp">View My Profile</a>
                          <a href="feedback.html">Feedback</a>
                          <a href="sp_page.html">Upgrade to SP</a>
                          <a href="myissues.html">Issues Page</a>
                          <a href="myanswers.html">Responses</a>
                          <a href="login.html">Logout</a>

                        </div>
                        
                      </div>
                </div>
                <div class="slogan col-md-6 justify-content-center">
                    <h1
                        style="margin-top:45px;color: aliceblue; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                        Don't let
                        the tech bugs bite.</h1>

                </div>
                <div class="icon col-md-2 ">
                    <img class="img2" src="images/profile.png" alt="profile">

                </div>

            </nav>

        </div>
        
        <div style="background-color:red">
        <%
		session = request.getSession();
		out.println("<h1 style='font-size:25px'>"+(String)session.getAttribute("user")+"</h1>");
		
		%>
        
        </div>

        <div class="container">
            <div class="query col-offset-2 col-md-6">
                <!-- button -->
                <a href="raise_issue.html"> <button type="button" onmouseenter="highlightBtn(this)" onmouseleave="highlightBtn(this)">Raise a ticket</button> </a>
                <!-- <button type="button">Raise a ticket</button> -->
            </div>
            <br>
            <br>
            <div class="search">
                <!-- text,input -->
                <div class="inp">

                    <form class="example col-offset-2">
                        <input type="text" placeholder="Search.." name="search" />
                       <a href="search_result.html" ><button type="button" style="padding-bottom: 10px"><i class="fa fa-search"></i></button></a>

                    </form>

                </div>
                <!-- <div class="sub">

            </div> -->

            </div>
        </div>
        <div class="popular col-md-6 offset-md-3">
            <table class="table table-success   popular-table"> 
                <thead>
                    <tr>
                        <th scope="col">Username</th>
                        <th scope="col">Query topic</th>
                        <th scope="col">Interactions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mark</td>
                        <td>HTML</td>
                        <td>33</td>
                    </tr>
                    <tr>
                        <td>Jacob</td>
                        <td>CSS</td>
                        <td>32</td>
                    </tr>
                    <tr>
                        <td>Larry</td>
                        <td>Bootstrap</td>
                        <td>31</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="active col-md-6 offset-md-3">
            <table class="table table-success   active-table"> 
                <thead>
                    <tr>
                        <th scope="col">Query topic</th>
                        <th scope="col">Interactions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>HTML</td>
                        <td>33</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>