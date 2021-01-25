<%-- 
    Document   : validatelogin
    Created on : Feb 26, 2020, 8:44:51 PM
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
            String pass=request.getParameter("pass");
            String type=request.getParameter("usertype");
            session.setAttribute("user", uname);
            session.setAttribute("pass", pass);
            session.setAttribute("utype", type);
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select username,password,type from login where username=? and password=? and type=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  stmt.setString(3, type);
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
if (type.equals("Admin")) {
            response.sendRedirect("home.jsp");
        }

else
{
    response.sendRedirect("servicesr.jsp");
    
}

}                          

con.close();
  }
  catch(Exception e){ e.printStackTrace();
    }  

  
%>


        
        <h1>Hello World!</h1>
    </body>
</html>
