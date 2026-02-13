<%-- 
    Document   : index
    Created on : 9 oct. 2022, 21:50:33
    Author     : Oscar y Cristian
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <title>Bienvenidos</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%

            String usuario = request.getParameter("user");
            String nombre = request.getParameter("nombre");
            String email = request.getParameter("email");
            String contrasenia = request.getParameter("contrasenia");

            Connection conx = null;// conexion a una base de datos
            Statement sta = null;        // ejecuta un comando sql
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = conx.createStatement();
            } catch (SQLException error) {
                out.print(error.toString());

            }
            try {
                sta.executeUpdate("insert into usuarios values('" + usuario + "','" + nombre + "','" + email + "','" + contrasenia + "');");
                out.println("<script>alert('El usuario ha sido registrado')</script>");
                conx.close();
                sta.close();
            } catch (SQLException error) {
                out.print(error.toString());
            }

        %>
        <a href="index.html"><input type="submit" value="Regresar" id="form_button" /></a>
    </body>
</html>
