<%-- 
    Document   : index
    Created on : Feb 26, 2020, 8:22:20 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/css/style.css" rel="stylesheet">
<style type="text/css">
  
body{
      background: url("v2.jpeg");
      background-repeat: no-repeat;
      background-size: 100% 100%;
    }

</style>
<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <!-- Login Form -->
      <div class="form">
      <h1>Login </h1>
    <form class="login-form" method="get" action="validatelogin.jsp">
        <input type="text" name="uname" placeholder="username" autocomplete="off" maxlength="13" required style="text-align: center;">
      <input type="password" name="pass" placeholder="password" autocomplete="off" maxlength="13" required style="text-align: center;">
      <div class="col-sm">
          <select name="usertype"  class="custom-select" style="width: 65%;">
  <option value="Admin">Admin</option>
  <option value="Customer">Customer</option>
</select>
      </div>
    
      
      <br>
     <input type="submit"  class="btn btn-sm btn-primary"> 
      <br>
      <br>
      <p class="message">Not registered? <a href="signup.jsp">Create an account</a></p>
    </form>

  </div>
</div>


<script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

</body>
</html>


