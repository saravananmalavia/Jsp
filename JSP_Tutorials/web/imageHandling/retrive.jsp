<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
          pageEncoding="ISO-8859-1"%>
           <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     </head>
    <body>
     <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%!
 Blob image = null;    
 byte[ ] imgData = null ;
 %>
 <%
   try{
    //PrintWriter out=response.getWriter();

  out.println("Retrieve Image Example!");
  String driverName = "com.mysql.jdbc.Driver";
  String url = "jdbc:mysql://localhost:3306/";
  String dbName = "test";
  String userName = "root";
  
   
   
     String password = "";
       Connection con = null;
       Class.forName(driverName);
      con = DriverManager.getConnection(url+dbName,userName,password);
        Statement st = con.createStatement();
     PreparedStatement pre1 = con.prepareStatement("select * from save_image");
 ResultSet rs1=pre1.executeQuery();
 
 %>
 <table width="200" border="1">
 
   
 <%
 
 
while(rs1.next())   
    
   //  image = rs1.getBlob(1);
   //  imgData = image.getBytes(1,(int)image.length());
     

 {byte[] bytearray1 = new byte[4096];  
           int size1=0;  
          InputStream sImage1;  
            sImage1 = rs1.getBinaryStream("image");
          
            %>
             <tr>
             <td>
            
            </td>
              </tr>
            <%
            System.out.println("sImage1 = " + sImage1.available());
            
            response.reset();  
           response.setContentType("image/jpeg");  
           response.addHeader("Content-Disposition","filename=logo.jpg");  
          while((size1=sImage1.read(bytearray1))!= -1 )  
             {  
              response.getOutputStream().write(bytearray1,0,size1);  
             }  
           response.flushBuffer(); 
          sImage1.close();  
           rs1.close();  
        }
  pre1.close();
  con.close();  
  }
 catch (Exception e){
         out.println(e.getMessage());
        }
%>



</table>
  </body>
    </html>