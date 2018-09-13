<%@ page import = " java.util.* " %>
<html> 
<body> 
<%  
String ParameterNames = "";
			for(Enumeration e = request.getHeaderNames();
 e.hasMoreElements(); ){
				ParameterNames = (String)e.nextElement();
				out.println(ParameterNames +" : " + request.getHeader(ParameterNames) + "<br/>");
			}
%> 
  
</body> 
</html>
