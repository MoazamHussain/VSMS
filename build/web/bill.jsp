<%-- 
    Document   : bill
    Created on : Feb 26, 2020, 8:31:28 PM
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
      background: url("b4.jpeg");
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
}.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
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
<div class="container">
  <div class="card">
                          <%   
                              String r1=request.getParameter("refer");
                              int r=Integer.parseInt(r1);
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select * from service where regid=?");
  stmt.setString(1, r1);
  
  ResultSet rs=stmt.executeQuery();  
while(rs.next()) 
{


%>
<div class="card-header">
Invoice
<strong><%=rs.getInt("regid")%></strong> 
  <span class="float-right"> <strong>Status:</strong> Pending</span>

</div>
<div class="card-body">
<div class="row mb-4">
<div class="col-sm-6">
<h6 class="mb-3">From:</h6>
<div>
<strong>Service Center</strong>
</div>
<div>Address : Kondhwa</div>
<div>City : Pune</div>
<div>Email : vms@gmail.com</div>
<div>Phone : 9798281233</div>
</div>

<div class="col-sm-6">
<h6 class="mb-3">To:</h6>
<div>
<strong><%=rs.getString("cname")%></strong>
</div>
<div>Address : <%=rs.getString("address")%></div>
<div>PinCode : <%=rs.getInt("pin")%> ,City : <%=rs.getString("city")%></div>
<div>Email : <%=rs.getString("emailid")%></div>
<div>Phone : <%=rs.getString("mobile")%></div>
</div>
        <%   }                          

con.close();
  }
  catch(Exception e){ e.printStackTrace();
    }  

  
%>


</div>

<div class="table-responsive-sm">
<table class="table table-striped">
<thead>
<tr>
<th class="center">#</th>
<th>Item</th>
<th>Description</th>

<th class="right">Unit Cost</th>
  <th class="center">Qty</th>
<th class="right">Total</th>
</tr>
</thead>
<tbody>
<tr>
<td class="center">1</td>
<td class="left strong">Service Oil</td>
<td class="left">Extended License</td>

<td class="right">Rs999,00</td>
  <td class="center">1</td>
<td class="right">Rs500</td>
</tr>
<tr>
<td class="center">2</td>
<td class="left">Regular Services</td>
<td class="left">Engine Cleanup</td>

<td class="right">-</td>
  <td class="center">-</td>
<td class="right">Rs500</td>
</tr>

</tbody>
</table>
</div>
<div class="row">
<div class="col-lg-4 col-sm-5">

</div>

<div class="col-lg-4 col-sm-5 ml-auto">
<table class="table table-clear">
<tbody>
<tr>
<td class="left">
<strong>Subtotal</strong>
</td>
<td class="right">Rs1000</td>
</tr>

<tr>
<td class="left">
<strong>Total</strong>
</td>
<td class="right">
<strong>Rs1000</strong>
</td>
</tr>
</tbody>
</table>
<a href="home.jsp" class="btn btn-sm btn-primary" role="button" style="width: 65%">Send</a>
   
</div>

</div>

</div>
</div>
</div>
</body>
<script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</html>

  <!-- Bootstrap core JavaScript -->
  
