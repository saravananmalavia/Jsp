<%@ page import = " java.util.* " %>
<html> 
<body> 
<%  
String[] allpasswords = request.getParameterValues("t3");

			for(int i=0;i<allpasswords.length;i++){
				
				out.println(allpasswords[i] + "<br/>");
			}
%> 

</body> 
</html>