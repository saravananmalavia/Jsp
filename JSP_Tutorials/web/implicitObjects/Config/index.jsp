<html>
<head> <title> Config Implicit Object</title>
</head>
<body>
<% 
String sname=config.getServletName(); 
out.print("Servlet Name is: "+sname); 
out.print(config.getInitParameter("dname"));
%>
</body>
</html>