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
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "");

	   PreparedStatement psImageInsertDatabase=null;
	   
	   byte[] b=null;
	   try{
	      String sqlImageInsertDatabase="insert into tblProducts (SNo,FileName,Description) values(?,?,?)";
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
	       /*  FileItem item = (FileItem) iter.next();
	         if (!item.isFormField()) {
	              b = item.get();
	          }*/
               
               String itemName=null;
                FileItem item = (FileItem) iter.next();
        if (!item.isFormField()){
                      
            try {
                itemName = item.getName();
                int IndexOf = itemName.indexOf("."); 
                String domainName = itemName.substring(IndexOf);
                String finalimage = itemName + "."+ domainName;
                ServletContext servletContext = getServletContext();
                String contextPath = servletContext.getRealPath("/");
                String Path=contextPath+"images\\"+itemName;
                     
                File savedFile = new File("E:\\Training\\JSP\\Workspace\\TestApplication\\web\\ImageUpload\\Logos\\"+itemName);
                item.write(savedFile);
                //  out.print(Path);
                 //  out.print(Path);
                } catch (Exception e)
                        {
                          e.printStackTrace();
                         }
                            
	      }
            psImageInsertDatabase.setInt(1, 106);
            psImageInsertDatabase.setString(2, itemName);
	    psImageInsertDatabase.setString(3, "Keep your system up-to-date with this tool that analyzes the system drivers on your computer");
	    psImageInsertDatabase.executeUpdate();
	  
	      
	      
	   out.println("OK");	
              }
	   }
	   catch(Exception e)
	   {
		   
	     e.printStackTrace();
	     out.println(e.getMessage().toString());
	     //response.sendRedirect("addimage.jsp");
	   }

  }
%>
