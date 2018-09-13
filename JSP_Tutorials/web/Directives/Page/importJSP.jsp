<%@page import="servlets.Extends"%>
<html>
     <head><title>Example of Extends Attribute of page Directive in JSP</title></head>
     
     <body>
            <font size="20" color="red">
     <%
	Extends ex = new Extends();
	out.print(ex.show());
     %>
    </font>
     </body>
</html>
