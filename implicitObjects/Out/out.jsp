<HTML>
<HEAD> 
<TITLE> OUT IMPLICIT OBJECT EXAMPLE </TITLE>
</HEAD>
<BODY>
<%
out.println( "print statement " );
out.clear();
//out.flush();

out.clearBuffer();
out.println( "println" );
out.print(out.getBufferSize());
out.newLine();
out.print(out.getRemaining());
out.println("Another print statement");
%>
</BODY>
</HTML>