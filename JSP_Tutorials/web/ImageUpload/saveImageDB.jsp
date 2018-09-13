<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%

  boolean isMultipart = ServletFileUpload.isMultipartContent(request);

if(!isMultipart)
{
out.println("File Not uploaded");	

}

else
{
	
	  Connection conn=null;
	   Class.forName("com.mysql.jdbc.Driver").newInstance();
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root", "root");

	   PreparedStatement psImageInsertDatabase=null;
	   
	   byte[] b=null;
	   try{
	      String sqlImageInsertDatabase="insert into upload_image (bImage) values(?)";
	      psImageInsertDatabase=conn.prepareStatement(sqlImageInsertDatabase);
	      
	      DiskFileItemFactory factory = new DiskFileItemFactory();

	      ServletFileUpload sfu = new ServletFileUpload(factory);
	      List items=null;
	      
	      

	      
	      try
	      {
	        items = sfu.parseRequest(request);
	      }
	      catch(Exception e)
	      {
	     	 out.println("***********************");
	     	 out.println(e.getMessage().toString());
	     	 out.println("***********************");
	     	 
	      }
	      
	      Iterator iter = items.iterator(); 

	      while (iter.hasNext()) {
	         FileItem item = (FileItem) iter.next();
	         if (!item.isFormField()) {
	              b = item.get();
	          }
	      }

	      psImageInsertDatabase.setBytes(1,b);
	      psImageInsertDatabase.executeUpdate();
	  
	      
	      
	   out.println("OK");	
	
	   }
	   catch(Exception e)
	   {
		   
	     e.printStackTrace();
	     out.println(e.getMessage().toString());
	     //response.sendRedirect("addimage.jsp");
	   }

  }
%>