<%-- 
    Document   : alta_horario
    Created on : Nov 14, 2022, 7:47:33 AM
    Author     : alumno
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
    </head>
    <body>
        <div class="contenedor principal" id="principal-form">
            <h1 style="text-align: center">Altas</h1>
            <div class="seccion contenedor" id="seccion1">
                <a href="index.html">regreso</a>
                <br><br>
                <a href="Form2.html">agregar otro usuario</a>
            </div>
            <div style="text-align: center;">
                <br><br><br>
            </div>
        </div>
        <%
            Random random = new Random();
            int cod = random.nextInt(1000000000 - 300) + 1;

            String mat = request.getParameter("materia");
            String prof = request.getParameter("profesor");
            String entr = request.getParameter("h_entr");
            String sal = request.getParameter("h_sal");
            String user = request.getParameter("user");

            Connection conx = null; //conexion a una base de datos
            Statement sta = null;          //ejecuta un comando sql
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = conx.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                sta.executeUpdate("insert into horario values('" + cod + "','" + mat + "','" + prof + "','" + entr + "','" + sal + "');");
                sta.executeUpdate("insert into horario_usuario values('" + cod + "','" + user + "')");
                out.println("<script>alert('Su horario se ha dado de alta');</script>");
                conx.close();
                sta.close();
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
        <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "horario.jsp?user=<%=user%>"; }, 3000 );
                    </script> 

    </body>
</html>
