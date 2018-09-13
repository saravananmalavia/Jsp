<html> 
<head><title>Success Page</title>
</head>
<body> 
<% 
String data=(String)session.getAttribute("session-uid");
out.println("Welcome "+ data+"!!");

%>
<%= "Max Interval " + session.getMaxInactiveInterval()%>

</body> 
</html>