<%-- 
    Document   : home
    Created on : Feb 26, 2020, 8:26:41 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Service</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<style type="text/css">
  body{
      
      background-repeat: no-repeat;
      background-size: 100% 100%;
    }

.btn.btn-round {
    border-radius: 30px;
    width: 200px;
}
.btn.btn-fab.btn-round {
    border-radius: 50%;
}
.btn-primary {
    color: #fff;
    background-color: #72d0c3;
    border-color: #007bff;
}.col-sm{
  border-style: groove;
  margin: 6px 3px 0px 0px;
    padding: 9px;
    text-align: center;
}</style>
<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#" >Service Center</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="home.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="report.jsp">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<div class="container" style="text-align: center; background: url('v2.jpeg') ;height: 700px; width: 1000px" >
    <br><br>
  <h1 ><font color="white">Services List</font></h1>
  <%
   try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select * from service");  
  
  ResultSet rs=stmt.executeQuery();  
while(rs.next()) 
{


%>
 
    <div class="col-sm">
       
     <h6><font color="red">Vehicle No : <%=rs.getInt("vno")%></font></h6>
     <b><p><font color="green">Contact No : <%=rs.getInt("mobile")%><br>
      Service Details : <%=rs.getString("sdetail")%><br>
      Address : <%=rs.getString("address")%><br></font>
      </p></b>
      <form action="bill.jsp"><input type="submit" value="<%=rs.getInt("regid")%>" name="refer" href="bill.jsp" class="btn btn-sm btn-primary" role="button"><font color="white">Deliver</font></form>
   
    </div>
        <%   }                          

con.close();
  }
  catch(Exception e){ e.printStackTrace();
    }  

  
%>
    
  
    
   
 
    
    
  
</div>


</body>
<script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</html>

  <!-- Bootstrap core JavaScript -->
  
