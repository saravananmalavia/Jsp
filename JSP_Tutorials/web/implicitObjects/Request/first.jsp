
<%@ page import="java.util.*" import="java.io.*"%>
<% request.setAttribute("PAGE1", "first1.jsp");%>
<% request.setAttribute("PAGE2", "first2.jsp");%>
<% request.setAttribute("PAGE3", "first3.jsp");%>
<% request.setAttribute("PAGE4", "first4.jsp");%>
<%--<% response.sendRedirect("second.jsp");%>--%>
  <jsp:forward page="second.jsp"/> 