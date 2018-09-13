<html>  
<body>  
  
<%@ page info="composed by e-vision labs" %>  

 <!--    <form action="../MyServlet" method="post" name="productForm" id="productForm"> -->
        <form action="buffer.jsp" method="post" name="productForm" id="productForm">
Today is: <%= new java.util.Date() %>  
  <%= this.getServletInfo() %>
<input type="submit" name="Submit" value="Submit">
  </form>
</body>  
</html>  

