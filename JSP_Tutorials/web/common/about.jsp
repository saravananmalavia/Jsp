<%-- 
    Document   : about
    Created on : May 25, 2017, 3:41:47 PM
    Author     : Saravanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>
Server info: <%= application.getServerInfo() %><br>  
Servlet version: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %>  
JSP version: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %><br> 
</div>
    </body>
</html>
