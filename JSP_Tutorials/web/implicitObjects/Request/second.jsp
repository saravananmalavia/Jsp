<%@ page import = "java.util.*" %>
<html> 
<body> 
From Which Page : <%=request.getAttribute("PAGE1")%><br>

<% 
    request.removeAttribute("PAGE1");
String ParameterNames = "";
			for(Enumeration e = request.getAttributeNames();
 e.hasMoreElements(); ){
				ParameterNames = (String)e.nextElement();
				out.println(ParameterNames + "<br/>");
			}
%> 
</body> 
</html>

