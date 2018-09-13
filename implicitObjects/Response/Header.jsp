<%@ page import="java.io.*,java.util.*" %>
<html>
<body>
<h1>Page Redirection</h1>
<%
   String site = new String("http://evisionlabs.org");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
   response.containsHeader("Location");
%>
</body>
</html>
