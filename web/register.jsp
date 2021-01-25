<%-- 
    Document   : register
    Created on : Feb 26, 2020, 8:49:46 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                <%   
            String uname=request.getParameter("uname");
            String phno=request.getParameter("phno");
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            String cpass=request.getParameter("cpass");
            String type="Customer";
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root",""); 
    
    
  String sql=("INSERT INTO reg(username,password,phno,emailid) VALUES (?,?,?,?)");
  PreparedStatement ps=con.prepareStatement(sql);
  
   ps.setString(1,uname);
       ps.setString(2,pass);
       ps.setString(3,phno);
       ps.setString(4,email);
       ps.executeUpdate();
       
       
       String sql1=("INSERT INTO login(username,password,type) VALUES (?,?,?)");
       
       PreparedStatement ps1=con.prepareStatement(sql1);
       ps1.setString(1,uname);
       ps1.setString(2,pass);
       ps1.setString(3,type);
       ps1.executeUpdate();
  
  response.sendRedirect("index.jsp");
 

  }
  catch(Exception e){ e.printStackTrace();
  out.println(e);
  //response.sendRedirect("emplyeeReg.jsp");
  }  

  
%>

        <h1>Hello World!</h1>
    </body>
</html>
