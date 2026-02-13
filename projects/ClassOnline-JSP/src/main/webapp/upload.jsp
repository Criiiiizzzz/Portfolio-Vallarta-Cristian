<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="javax.servlet.annotation.*"%>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>

<%
String saveFile = "";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
   DataInputStream in = new DataInputStream(request.getInputStream());
   int formDataLength = request.getContentLength();
   byte dataBytes[] = new byte[formDataLength];
   int byteRead = 0;
   int totalBytesRead = 0;
   while (totalBytesRead < formDataLength) {
      byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
      totalBytesRead += byteRead;
   }
   String file = new String(dataBytes);
   saveFile = file.substring(file.indexOf("filename=\"") + 10);
   saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
   saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
   int lastIndex = contentType.lastIndexOf("=");
   String boundary = contentType.substring(lastIndex + 1,contentType.length());
   int pos;
   pos = file.indexOf("filename=\"");
   pos = file.indexOf("\n", pos) + 1;
   pos = file.indexOf("\n", pos) + 1;
   pos = file.indexOf("\n", pos) + 1;
   int boundaryLocation = file.indexOf(boundary, pos) - 4;
   int startPos = ((file.substring(0, pos)).getBytes()).length;
   int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
   File ff = new File(saveFile);
   FileOutputStream fileOut = new FileOutputStream(ff);
   fileOut.write(dataBytes, startPos, (endPos - startPos));
   fileOut.flush();
   fileOut.close();

   // Guardar en la base de datos
   String url = "jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false";
   String user = "root";
   String password = "n0m3l0";
   String driver = "com.mysql.jdbc.Driver";
   Class.forName(driver);
   Connection conn = DriverManager.getConnection(url, user, password);

   String query = "INSERT INTO files (name, content) values (?, ?)";
   PreparedStatement pstmt = conn.prepareStatement(query);
   pstmt.setString(1, saveFile);
   FileInputStream fis = new FileInputStream(ff);
   pstmt.setBinaryStream(2, fis, (int) ff.length());
   pstmt.executeUpdate();

   pstmt.close();
   conn.close();

   out.println("Archivo " + saveFile + " subido exitosamente.");
} else {
   out.println("Error al subir el archivo.");
}
%>
