<%-- 
    Document   : cookieStep2
    Created on : May 26, 2017, 6:10:08 PM
    Author     : Saravanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
Cookie ck[]=request.getCookies();  
for(int i=0;i<ck.length;i++){  
 out.print("<br>"+ck[i].getName()+" "+ck[i].getValue());//printing name and value of cookie  
}  
    
//Cookie ck=new Cookie("user","");//deleting value of cookie  
//ck.setMaxAge(0);//changing the maximum age to 0 seconds  
//response.addCookie(ck);//adding cookie in the response 

    %>