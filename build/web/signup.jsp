<%-- 
    Document   : signup
    Created on : Feb 26, 2020, 8:27:44 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
<style>
    body{
      background: url("b7.jpeg");
      background-repeat: no-repeat;
      background-size: 100% 100%;
    }
    </style>
</head>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/css/style.css" rel="stylesheet">

<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
   <h1>Customer Registration!</h1>
    </div>

    <!-- Login Form -->
    <form action="register.jsp">
      <div class="col-md-12">
        <label>User Name <input autocomplete="off" maxlength="13" type="text" id="login" class="fadeIn second" name="uname" placeholder=""  style="width: 60%;"></label>
      </div>
         <div class="col-md-12">
    <label>  Mobile No: <input autocomplete="off" maxlength="11" type="text" id="login" class="fadeIn second" name="phno" placeholder=""  style="width: 60%;"></label>
  </div> 
    <div class="col-md-12">
   <label> Email   <input autocomplete="off" maxlength="20" type="text" id="login" class="fadeIn second" name="email" placeholder=""  style="width: 60%;"></label>
 </div>   
 <div class="col-md-12">
  <label>  Password <input autocomplete="off" maxlength="13" type="password" id="password" class="fadeIn third" name="pass" placeholder=""  style="width: 60%;"></label></div>  
   <div class="col-md-12">
 <label> Confirm Password  <input autocomplete="off" maxlength="13" type="password" id="password" class="fadeIn third" name="cpass" placeholder=""  style="width: 60%;"></label></div>



      <input type="submit" class="fadeIn fourth" value="Sign Up">
    </form>

    <!-- Remind Passowrd -->
  

  </div>
</div>


<script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

</body>
</html>


