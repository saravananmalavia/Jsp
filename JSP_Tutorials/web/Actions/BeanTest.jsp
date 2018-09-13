<html>
    <head>
        <title>JSP Page to show use of useBean action</title>
    </head>
    <body>
       <h1>Demo: Action</h1>
       <jsp:useBean id="student" class="evision.StuBean"/>
       <jsp:setProperty name="student" property="*"/>
       <h1>
          name:<jsp:getProperty name="student" property="name"/><br>
          empno:<jsp:getProperty name="student" property="rollno"/><br>
       </h1>
    </body>
</html>
