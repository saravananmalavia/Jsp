<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URL, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Response addHeader</title>
</head>
<body>
<form>
<table>
<tr>
<td>Enter name of header to add : </td>
<td><input type="text" name="hName"/></td>
</tr>
<tr>
<td>Enter value for the above header :</td>
<td><input type="text" name="hValue"/></td>
</tr>
<tr>
<td></td><td><input type="submit" value="submit"/></td>
</tr>
</table>
</form>
<%
String hName = request.getParameter("hName");
String hValue = request.getParameter("hValue");

if(hName != null)
{
    boolean bol =false;
//boolean bol = ((String)application.getAttribute(hName)).equals(hName);
%>
<p>Whether application Attribute <b><%=hName %></b> is available :
<% out.println(bol);%></p>
<%
if(bol== false)
{
application.setAttribute(hName, hValue);
out.println("Attribute is added to the Application");
}
else
{
out.println("Specified header is already existed");
} %>
<% 
String ParameterNames = "";
			for(Enumeration  e= application.getAttributeNames();
 e.hasMoreElements(); ){
				ParameterNames = (String)e.nextElement();
                                out.println(ParameterNames +" :  ");
				out.println(application.getAttribute(ParameterNames) + "<br/>");
			}
} 
%>
</body>
</html>