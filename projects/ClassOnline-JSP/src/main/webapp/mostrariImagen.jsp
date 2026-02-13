<%@page contentType="image/jpeg" import="java.sql.*,java.io.*" %>
<%
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    OutputStream outStream= null;

    try {
        // Configurar la conexión a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false";
        String user = "root";
        String password = "n0m3l0";
        con = DriverManager.getConnection(url, user, password);

        // Recuperar los datos de la imagen desde la base de datos
        int imageId = Integer.parseInt(request.getParameter("id"));
        stmt = con.prepareStatement("SELECT content FROM files WHERE id = ?");
        stmt.setInt(1, imageId);
        rs = stmt.executeQuery();

        if (rs.next()) {
            byte[] imageData = rs.getBytes("content");

            // Mostrar los datos de la imagen en la respuesta HTTP
            response.setContentType("image/png");
            outStream = response.getOutputStream();
            outStream.write(imageData);
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
   
%>