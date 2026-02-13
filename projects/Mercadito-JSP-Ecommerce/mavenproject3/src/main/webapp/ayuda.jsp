<%-- 
    Document   : altas
    Created on : 25/03/2022, 08:09:50 AM
    Author     : Alumno
--%>
<%@page import="java.lang.Math"%>
<%@page  import="java.sql.*"%>
<%@page  import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    </head>
    <body>
        
        <%
            Random random = new Random();
            int cod = random.nextInt(1000000000 - 300) + 1;
            int cod1 = random.nextInt(1000000000 - 300) + 1;
            int cod2 = random.nextInt(1000000000 - 300) + 1;
            int cod3 = random.nextInt(1000000000 - 300) + 1;
            
            String user = request.getParameter("nombre");
            String repor = request.getParameter("reporte");
            String estado = new String ("Abierto");
            String respuesta = new String ("Sin respuesta");
            

            Connection conx = null; //conexion a una base de datos
            Statement sta = null;          //ejecuta un comando sql
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Mercatec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = conx.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                sta.executeUpdate("insert into reportes values('" + cod + "','" + user + "','" + repor + "','" + estado + "','" + respuesta + "');");
                sta.executeUpdate("insert into soporte values('" + cod + "','" + user + "','" + repor + "','" + estado + "','" + respuesta + "');");
                out.println("<script>alert('reporte dado de alta');</script>");
                %>
                <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "carrito.jsp?user=?"; }, 1000 );
                    </script>
                    <%
                conx.close();
                sta.close();
            } catch (SQLException error) {
                out.print(error.toString());
                out.println("<script>alert('Reporte emitido');</script>");
            }
        %>

    </body>
</html>