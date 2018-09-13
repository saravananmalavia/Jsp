<html>
<head>
<title>Header</title>
</head>
<body>
<form action="Header.jsp"> 
<%   response.addHeader("Site", "evisionlabs.org"); %>
<%=  request.getHeader("Site")%>
<input type="submit" value="Submit Details"/> 
</form>
</body>
</html>