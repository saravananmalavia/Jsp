<html> 
<head> 
<title>Using JavaBeans in JSP</title> 
</head> 
<body> 
<center> 
<h2>Using JavaBeans in JSP</h2> 
<jsp:useBean id="test" class="evision.Message" /> 
<jsp:setProperty name="test" 
property="message" 
value="Hello JSP..." /> 
<p>Got message....</p> 
<jsp:getProperty name="test" property="message" /> 
</center> 
</body> 
</html>
