<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title> Devil Software_Cálculo Diferencial_Audiovisual </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <!--
        
        TemplateMo 579 Cyborg Gaming
        
        https://templatemo.com/tm-579-cyborg-gaming
        
        -->
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
            function Perfil() {
                window.location.href = ("perfil-admin.jsp?admin=" + userParam);
            }

            //Funciones del administrador




        </script>
    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="js-preloader" class="js-preloader">
            <div class="preloader-inner">
                <span class="dot"></span>
                <div class="dots">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- ***** Preloader End ***** -->

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a class="logo" href="javascript:void(0)" onclick="inicio()">
                                <head><img style="width:50px; height: 50px;"src="img/LogoD.png" alt="">Devil Software</head>
                            </a>


                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-content">

                        <!-- ***** Featured Start ***** -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="feature-banner header-text">
                                    <div class="row">
                                        <div class="col-lg-8">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ***** Featured End ***** -->

                        <!-- ***** Details Start ***** -->
                        <div class="game-details">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2>  Soporte Técnico </h2>
                                </div>
                                <div class="col-lg-12">
                                    <div class="content">
                                        <div class="row" style="color: white">

                                            <table style=" font-size:100% ; color: white; text-align: center; float: left" border="0" width="80%" align="center">
                                                <th colspan="8" style="font-size: 25px; background-color: purple">Asistentes</th>
                                                <tr style="background-color: palevioletred;">
                                                    <th>Usuario</th>
                                                    <th>Nombre</th>
                                                    <th>Email</th>
                                                    <th>Contraseña</th>
                                                    <th>Eliminar</th>
                                                    <th>Modificar</th>
                                                </tr>
                                                <%

                                                    String user = request.getParameter("admin");

                                                    Connection cnx = null;
                                                    Statement sta = null;
                                                    ResultSet rs = null;

                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                        sta = cnx.createStatement();
                                                        rs = sta.executeQuery("select*from asistentes");
                                                        while (rs.next()) {

                                                %>
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td>
                                                        <a href="eliminar_asistente.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Eliminar Usuario</h5>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="modificar-asistente-admin.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Editar Datos</h5>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                        sta.close();
                                                        cnx.close();
                                                        rs.close();
                                                    } catch (SQLException error) {
                                                    }
                                                %>
                                            </table>
                                            <br><br><br>
                                            <table style=" font-size:100% ; color: white; text-align: center; float: left; margin-top: 50px;" border="0" width="80%" align="center">
                                                <th colspan="8" style="font-size: 25px; background-color: purple">Ingenieros de Soporte</th>
                                                <tr style="background-color: palevioletred;">
                                                    <th>Usuario</th>
                                                    <th>Nombre</th>
                                                    <th>Email</th>
                                                    <th>Contraseña</th>
                                                    <th>Eliminar</th>
                                                    <th>Modificar</th>
                                                </tr>
                                                <%
                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                        sta = cnx.createStatement();
                                                        rs = sta.executeQuery("select*from ingeniero_soporte");
                                                        while (rs.next()) {

                                                %>
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td>
                                                        <a href="eliminar_ingsoporte.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Eliminar Usuario</h5>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="modificar-ingsoporte-admin.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Editar Datos</h5>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                        sta.close();
                                                        cnx.close();
                                                        rs.close();
                                                    } catch (SQLException error) {
                                                    }
                                                %>
                                            </table>
                                            <br><br><br>
                                            <table style=" font-size:100% ; color: white; text-align: center; float: left; margin-top: 50px;" border="0" width="80%" align="center">
                                                <th colspan="8" style="font-size: 25px; background-color: purple">Gerentes de Soporte</th>
                                                <tr style="background-color: palevioletred;">
                                                    <th>Usuario</th>
                                                    <th>Nombre</th>
                                                    <th>Email</th>
                                                    <th>Contraseña</th>
                                                    <th>Eliminar</th>
                                                    <th>Modificar</th>
                                                </tr>
                                                <%
                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                        sta = cnx.createStatement();
                                                        rs = sta.executeQuery("select*from gerente_soporte");
                                                        while (rs.next()) {

                                                %>
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td>
                                                        <a href="eliminar_gersoporte.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Eliminar Usuario</h5>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="modificar-gersoporte-admin.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Editar Datos</h5>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                        sta.close();
                                                        cnx.close();
                                                        rs.close();
                                                    } catch (SQLException error) {
                                                    }
                                                %>
                                            </table>
                                            <br><br><br>
                                            <table style=" font-size:100% ; color: white; text-align: center; float: left; margin-top: 50px;" border="0" width="80%" align="center">
                                                <th colspan="8" style="font-size: 25px; background-color: purple">Gerentes de Mantenimiento</th>
                                                <tr style="background-color: palevioletred;">
                                                    <th>Usuario</th>
                                                    <th>Nombre</th>
                                                    <th>Email</th>
                                                    <th>Contraseña</th>
                                                    <th>Eliminar</th>
                                                    <th>Modificar</th>
                                                </tr>
                                                <%
                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                        sta = cnx.createStatement();
                                                        rs = sta.executeQuery("select*from gerente_mantenimiento");
                                                        while (rs.next()) {

                                                %>
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td>
                                                        <a href="eliminar_germantenimiento.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Eliminar Usuario</h5>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="modificar-germantenimiento-admin.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Editar Datos</h5>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                        sta.close();
                                                        cnx.close();
                                                        rs.close();
                                                    } catch (SQLException error) {
                                                    }
                                                %>
                                            </table>
                                            <br><br><br>
                                            <table style=" font-size:100% ; color: white; text-align: center; float: left; margin-top: 50px;" border="0" width="80%" align="center">
                                                <th colspan="8" style="font-size: 25px; background-color: purple">Ingenieros de Mantenimiento</th>
                                                <tr style="background-color: palevioletred;">
                                                    <th>Usuario</th>
                                                    <th>Nombre</th>
                                                    <th>Email</th>
                                                    <th>Contraseña</th>
                                                    <th>Eliminar</th>
                                                    <th>Modificar</th>
                                                </tr>
                                                <%
                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                        sta = cnx.createStatement();
                                                        rs = sta.executeQuery("select*from ingeniero_mantenimiento");
                                                        while (rs.next()) {

                                                %>
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td>
                                                        <a href="eliminar_ingmantenimiento.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Eliminar Usuario</h5>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="modificar-ingmantenimiento-admin.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                                            <h5>Editar Datos</h5>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                        sta.close();
                                                        cnx.close();
                                                        rs.close();
                                                    } catch (SQLException error) {
                                                    }
                                                %>
                                            </table>
                                            <div class="main-button">
                                                <center>
                                                    <br><br>
                                                    <a  href="javascript:void(0)" onclick="Perfil()"> Volver </a>
                                                </center>

                                            </div>

                                        </div>
                                    </div>

                                </div>

                                <footer>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p> Devil Software © </p>
                                            </div>
                                        </div>
                                    </div>
                                </footer>


                                <!-- Scripts -->
                                <!-- Bootstrap core JavaScript -->
                                <script src="vendor/jquery/jquery.min.js"></script>
                                <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

                                <script src="assets/js/isotope.min.js"></script>
                                <script src="assets/js/owl-carousel.js"></script>
                                <script src="assets/js/tabs.js"></script>
                                <script src="assets/js/popup.js"></script>
                                <script src="assets/js/custom.js"></script>


                                </body>

                                </html>
