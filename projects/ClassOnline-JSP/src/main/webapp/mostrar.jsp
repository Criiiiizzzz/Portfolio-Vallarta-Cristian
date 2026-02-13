<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mostrar Imágenes</title>
</head>
<body>
    <h1>Imágenes almacenadas en la base de datos:</h1>
    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Configurar la conexión a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false";
            String user = "root";
            String password = "n0m3l0";
            con = DriverManager.getConnection(url, user, password);

            // Consultar la tabla files y mostrar las imágenes
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT id, name FROM files");

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");

                out.println("<h2>" + name + "</h2>");
                out.println("<img src=\"mostrar.jsp?id=" + id + "\">");
                
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar los objetos de la base de datos
            try { rs.close(); } catch (Exception e) { }
            try { stmt.close(); } catch (Exception e) { }
            try { con.close(); } catch (Exception e) { }
        }
    %>
</body>
</html>
