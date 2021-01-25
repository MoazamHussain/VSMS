<%-- 
    Document   : report
    Created on : Feb 26, 2020, 8:30:34 PM
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
          
          <
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<div class="container" style="text-align: center; background: url('v5.jpeg');height: 700px">
  <h1 ><font color="black">Vehicle PickUp Request</font></h1>
      


          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-striped custom-table datatable">
                  <thead>
                    <tr>
                      <th><font color="black">Owner</font></th>
                      <th><font color="black">Vehicle No</font></th>
                      <th><font color="black">Address</font></th>
                      <th><font color="black">Return Date</font></th>
                      <th><font color="black">Details</font></th>
                      <th><font color="black">Payment</font></th>
<!--                      <th>PickUp
                      </th>-->
                      
                    </tr>
                  </thead>
                  <tbody>
                       <%   
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select * from service");  
  
  ResultSet rs=stmt.executeQuery();  
while(rs.next()) 
{


%>
                    <tr>
                    
                      <td><font color="black"><%=rs.getString("cname")%></font></td>
                      <td><font color="black"><%=rs.getInt("vno")%></font></td>
                      <td><font color="black"><%=rs.getString("address")%></font></td>
                      <td><font color="black"><%=rs.getString("returndate")%></font></td>
                      <td><font color="black"><%=rs.getString("sdetail")%></font></td>
                      <td><font color="black">Pending</font></td>
<!--                      <td><a class="btn btn-sm btn-primary" href="">Picked Up</a></td>
                     
                    </tr>-->
                <%   }                          

con.close();
  }
  catch(Exception e){ e.printStackTrace();
    }  

  
%>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
                </div>
        <!-- /Page Content -->
</body>
<script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</html>

  <!-- Bootstrap core JavaScript -->
  
