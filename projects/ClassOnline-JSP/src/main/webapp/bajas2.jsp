<%-- 
    Document   : bajas2
    Created on : 8/04/2022, 07:59:59 AM
    Author     : Alumno
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Form.css">
        <title>JSP Page</title>
        <script>
            var queryString = window.location.search;
            var urlParams = new URLSearchParams(queryString);
            var userParam = urlParams.get('admin');

            //Funciones del menu

            function inicio() {
                window.location.href = ("inicio-admin.html?admin=" + userParam);
            }
            function cambiarDatos() {
                window.location.href = ("inicio-admin.html?admin=" + userParam);
            }
            function CerrrarSesion() {
                window.location.href = ("inicio.html");
            }
            function EliminarCuenta() {
                window.location.href = ("calificaciones.html?admin=" + userParam);
            }
            function Modificar() {
                window.location.href = ("modificar.jsp?admin=" + userParam);
            }

            //Funciones del administrador

            function Consultar_usuarios() {
                window.location.href = ("Consultar_Usuarios.jsp?admin=" + userParam);
            }
            function Eliminar_usuarios() {
                window.location.href = ("eliminar_usuario.html?admin=" + userParam);
            }
            function Agregar_materias() {
                window.location.href = ("agregar_calculo1.html?admin=" + userParam);
            }
            function Eliminar_materias() {
                window.location.href = ("consultar.jsp?admin=" + userParam);
            }
            function Agregar_juegos() {
                window.location.href = ("consultar.jsp?admin=" + userParam);
            }
            function Eliminar_juegos() {
                window.location.href = ("consultar.jsp?admin=" + userParam);
            }
            function Agregar_profesores() {
                window.location.href = ("consultar.jsp?admin=" + userParam);
            }
            function Eliminar_profesores() {
                window.location.href = ("consultar.jsp?admin=" + userParam);
            }
        </script>
    </head>
    <body>
        <div class="contenedor principal" id="principal-form">
            <h1 style="text-align: center">Cancelar Consulta</h1>
            <div class="seccion contenedor" id="seccion1" style="font-size: 20px">
                <%
                    Connection conx = null; //conexion a una base de datos
                    PreparedStatement psta = null;          //ejecuta un comando sql
                    String curps = request.getParameter("user");
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        psta = conx.prepareStatement("delete from usuarios where usuario =?");

                        psta.setString(1, curps);
                        psta.executeUpdate();
                        out.println("<script>alert('borrado')</script>");

                    } catch (SQLException error) {
                        out.print(error.toString());

                    } catch (Exception error) {
                        out.print(error.toString());
                    }
                %>
            </div>
            <br><br>
            <a href="index.html">Regresar</a>
            <br><br>
        </div>
    </body>
</html>
