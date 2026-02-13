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
        
        <%
            String user=new String(request.getParameter("user").getBytes("ISO-8859-1"), "UTF-8");
            String con=new String(request.getParameter("contrasenia").getBytes("ISO-8859-1"), "UTF-8");
            
            String usuario = request.getParameter("user");
            String nombre = request.getParameter("nom_user");
            String ap_paterno_user = request.getParameter("ap_paterno_user");
            String ap_materno_user = request.getParameter("ap_materno_user");
            String email = request.getParameter("email");
            String num_user = request.getParameter("num_user");
            String contrasenia = request.getParameter("contrasenia");

            Connection conx = null;// conexion a una base de datos
            Statement sta = null;        // ejecuta un comando sql
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/MercaTec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = conx.createStatement();
            } catch (SQLException error) {
                out.print(error.toString());

            }
            try {
                sta.executeUpdate("insert into usuarios values('" + usuario + "','" + nombre + "','" + ap_paterno_user + "','" + ap_materno_user + "','" + email + "','" + num_user + "','" + contrasenia + "');");
        %>
        <script type="text/javascript">
            //Redireccionamiento tras 5 segundos
            setTimeout(function () {
                window.location.href = "index.html";
            }, 3000);
        </script>

        <%
                out.println("<script>alert('El usuario ha sido registrado')</script>");
                conx.close();
                sta.close();
            } catch (SQLException error) {
                out.print(error.toString());
            }

        %>
        
    </body>
</html>
