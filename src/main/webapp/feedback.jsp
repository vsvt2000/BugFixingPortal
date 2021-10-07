<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="feedback.css">
    <link rel="icon" href="images/logo.png" type="image/icon type" class="logo">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <title>Feedback</title>
    <script src="javascript/common.js"></script>
</head>
<body>
    <div class="header1 row" style="margin:0px 0px 0px 0px">
        <nav class="navbar navbar-dark bg-black navbar-brand">
            <div class="logo col-md-2 ">
                <img class="img1" src="images/logo.png" alt="logo">
                <!-- <img class="img2" src="images/profile.png" alt="profile"> -->
            </div>
            <div class="slogan col-md-6 justify-content-center">
                <h1
                    style="margin-top:45px;color: aliceblue; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                    Don't let
                    the tech bugs bite.</h1>

            </div>
            <div class="icon col-md-2 ">
                <a href="dashboard.jsp"> <img class="img2" src="images/profile.png" alt="profile"></a>

            </div>

        </nav>
        </div>
        
    <div class="app">
        <h1 style="text-align: center; margin-top: 50px;">Was this forum helpful?</h1>
        <p style="text-align: center;">Let us know how we did</p>
      <form action="feedback">
     
     
        <div class="container">
          <div class="item">
            <label for="0">
            <input class="radio" type="radio" name="feedback" id="0" value="0">
            <span>&#128512</span>
          </label>
          </div>
      
          <div class="item">
            <label for="1">
            <input class="radio" type="radio" name="feedback" id="1" value="1">
            <span>&#128512;</span>
          </label>
          </div>
      
          <div class="item">
            <label for="2">
            <input class="radio" type="radio" name="feedback" id="2" value="2">
            <span>&#128512;</span>
          </label>
          </div>
      
          <div class="item">
            <label for="3">
            <input class="radio" type="radio" name="feedback" id="3" value="3">
            <span>🙂</span>
          </label>
          </div>
      
          <div class="item">
            <label for="4">
            <input class="radio" type="radio" name="feedback" id="4" value="4">
            <span>🙂</span>
          </label>
          </div>
      
        </div>
      </div>
      <br>
      <div >
        <h3 style="text-align: center;">How can we improve?</h3>
        <br>
        <textarea  name="comments" rows="4" cols="50"  style="margin-left: 36.5%;"></textarea>
        <br>
        <a href="dashboard.jsp">  <button type="button" class="btn btn-primary offset-md-5"  style="margin-left: 45%;">Submit Feedback</button> </a>
       
      </form>
      </div>
       
      

</body>
</html>

