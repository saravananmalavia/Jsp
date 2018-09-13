<%-- 
    Document   : serverInfo
    Created on : May 26, 2017, 8:40:00 PM
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
       <% application.log("This is error 404 Page not found"); %>
        <%= application.getServerInfo() %>
    </body>
</html>
