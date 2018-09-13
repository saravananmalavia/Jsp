<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%

Connection con= null;
PreparedStatement ps = null;

ResultSet rs = null;
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/test";
String user = "root";

String password = "";
String sql = "select * from tblProducts";

try {

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);

ps = con.prepareStatement(sql);

rs = ps.executeQuery(); 

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style1 {color: #666666}
-->
        </style>
</head>
    <body>
        <h1>Product List</h1>
    <center>
        <table border="1" width="50%" >
            <thead >
                <tr>
                    <th width="10%">S.No.</th>
                    <th width="34%">Product</th>
                    <th width="56%">Description</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(rs.next())
                    {   int SNo= rs.getInt("SNo");
                        String FileName = rs.getString("FileName");
                        String Description= rs.getString("Description");
                   %>     
                     <tr >
                     <td ><div align="center"> <span class="style1"><%=SNo %></span> </div></td>
                     <td>  <div align="center"><img src="Logos/<%=FileName %>" height="100" width="100"/></div></td>
          
                    <td> <div align="center" class="style1"><%=Description %></div></td>
           
                </tr> 
                <%
                   
                    }
                    }
                    catch(SQLException sqe)
                    {
                    out.println("Error : "+sqe);
                    }
   %>
   
                
                
                   
            </tbody>
        </table>
    </center>
    </body>
</html>
