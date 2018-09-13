<%@ page import = " java.util.* " %>
<html> 
<body> 
<% 
String ParameterNames = "";
			for(Enumeration e = request.getParameterNames();
 e.hasMoreElements(); ){
				ParameterNames = (String)e.nextElement();
				out.println(ParameterNames + "<br/>");
			}
%> 
</body> 
</html>