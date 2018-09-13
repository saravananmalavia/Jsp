<html> 
<head><title>Check Credentials</title>
</head>
<body> 
<% 
String uid=request.getParameter("id"); 
String password=request.getParameter("pass"); 
session.setAttribute("session-uid", uid);
session.setMaxInactiveInterval(60);
if(uid.equals("evision") && password.equals("labs"))
{
 response.sendRedirect("success.jsp");
}
else
{
 response.sendRedirect("failed.jsp");
}
%> 
</body> 
</html>