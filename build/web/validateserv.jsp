<%-- 
    Document   : validateserv
    Created on : Feb 27, 2020, 9:57:43 AM
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
        
            String uname=(String)session.getAttribute("user");
            String pass=(String)session.getAttribute("pass");
            String ctype=(String)session.getAttribute("utype");
            String vno=request.getParameter("vno");
                    String cname=request.getParameter("cname");
                    String model=request.getParameter("model");
                    String mobile=request.getParameter("mobile");
                    String company=request.getParameter("company");
                    String emailid=request.getParameter("emailid");
                    String type=request.getParameter("type");
                    String totalkm=request.getParameter("totalkm");
                    String sdetail=request.getParameter("sdetail");
                    String insurance=request.getParameter("insurance");
                    String returndate=request.getParameter("returndate");
                    String chahsis=request.getParameter("chahsis");
                    String addr=request.getParameter("addr");
                    String pin=request.getParameter("pin");
                    String city=request.getParameter("city");
            int x,v,m,km,p;
            v=Integer.parseInt(vno);
            m=Integer.parseInt(mobile);
            km=Integer.parseInt(totalkm);
            p=Integer.parseInt(pin);
            
            
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select l.username,l.password,r.username,r.password,r.regid from login l,reg r where l.username=r.username=? and l.password=r.password=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
 
  
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
   
    x=rs.getInt("r.regid");

    PreparedStatement stmt1=con.prepareStatement("INSERT INTO service(vno,model,company,type,cname,mobile,emailid,totalkm,insurance,chahsis,sdetail,returndate,address,pin,city,regid) "
            + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
  stmt1.setInt(1, v);
  stmt1.setString(2, model);
  stmt1.setString(3, company);
  stmt1.setString(4, type);
  stmt1.setString(5, cname);
  stmt1.setInt(6, m);
  stmt1.setString(7, emailid);
  stmt1.setInt(8, km);
  stmt1.setString(9, insurance);
  stmt1.setString(10, chahsis);
  stmt1.setString(11, sdetail);
  stmt1.setString(12, returndate);
  stmt1.setString(13, addr);
  stmt1.setInt(14, p);
  stmt1.setString(15, city);
  stmt1.setInt(16, x);
  stmt1.executeUpdate();
  response.sendRedirect("index.jsp");
out.println(x);
}
con.close();
  }
  catch(Exception e){ e.printStackTrace();
    }
        
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
