
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%

Connection con=null;

ResultSet rs=null;

PreparedStatement psmt=null;

FileInputStream fis;

String url="jdbc:mysql://127.0.0.1:3306/test?autoReconnect=true";

try{

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(url,"root","");

File image=new File("E:/Training/images/image5.jpg");

psmt=con.prepareStatement("insert into save_image(name,image)"+"values(?,?)");

psmt.setString(1,"abc5");

fis=new FileInputStream(image);

psmt.setBinaryStream(2, (InputStream)fis, (int)(image.length()));

int s = psmt.executeUpdate();

if(s>0) {

%>

<b><font color="Blue">

<% out.println("Image Uploaded successfully !"); %>

</font></b>

<%

}

else {

out.println("unsucessfull to upload image.");

}

con.close();

psmt.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>