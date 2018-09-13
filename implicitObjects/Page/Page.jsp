<%-- 
    Document   : Page
    Created on : May 27, 2017, 5:09:37 PM
    Author     : Saravanan
--%>

<%@page contentType="text/html" info="I am in evision labs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%= this.getServletInfo() %>
<%= ((Servlet)page).getServletInfo() %>

    </body>
</html>
