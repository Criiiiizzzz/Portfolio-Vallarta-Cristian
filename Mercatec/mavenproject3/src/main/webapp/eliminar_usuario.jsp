<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>

        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="sesion.css" type="text/css">
        <link rel="stylesheet" href="style.css" type="text/css">
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
            function perfil() {
                window.location.href = ("perfil-admin.jsp?admin=" + userParam);
            }

            //Funciones del administrador




        </script>
    </head>

    <body>
        <div class="contenedor">
            <header class="main-header">
                <div class="container container--flex">
                    <div class="main-header__container">
                        <h1 class="main-header__title">MERCATEC</h1>
                        <span class="icon-menu" id="btn-menu"><i class="fas fa-bars"></i></span>
                        <nav class="main-nav" id="main-nav">
                            <ul class="menu">
                                <li class="menu__item"><a class="menu__link" href="javascript:void(0)" onclick="inicio()">INICIO</a></li>
                                <li class="menu__item"><a class="menu__link" href="javascript:void(0)" onclick="mercados()">MERCADOS</a></li>
                                <li class="menu__item"><a class="menu__link" href="javascript:void(0)" onclick="catalogo()">CATALOGO</a></li>
                                <li class="menu__item"><a class="menu__link" href="javascript:void(0)" onclick="nosotros()">NOSOTROS</a></li>
                                <li class="menu__item"><a class="menu__link" href="javascript:void(0)" onclick="ayuda()">AYUDA</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="main-header__container" align="left">
                        <span class="main-header__txt">Reportar Problema</span>
                        <p class="main-header__txt"> Llama 5528502597</p>
                    </div>
                    <div class="main-header__container">
                        <a href="javascript:void(0)" onclick="perfil()" class="main-header__link"><img src="imagenes/usuario2.png" style="width: 15px; height: 15px"></a>
                        <a href="carrito.jsp" class="main-header__btn">Mi carrito</a> 
                        <input type="search" class="main-header__input" placeholder="Buscar productos">

                        <a href="index.html"><img src="imagenes/lupa.png" style="width: 20px; height: 20px"></a>
                    </div>
                </div>
            </header>
            <div id="container">
                <h1>&bull; Consultar Usuarios &bull;</h1>
                <div class="underline"></div>

                <table style=" font-size:100% ; text-align: center; float: relative; margin-bottom:  80px;" border="0" width="80%" align="center">

                    <tr style="background-color: palevioletred;">
                        <th>Usuario</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>Telèfono</th>
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
                            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/MercaTec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                            sta = cnx.createStatement();
                            rs = sta.executeQuery("select*from usuarios");
                            while (rs.next()) {

                    %>
                    <div style="color: black">
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td>
                                <a href="eliminar_usuario2.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                    <h5>Eliminar Usuario</h5>
                                </a>
                            </td>
                            <td>
                                <a href="modificar-usuario-admin.jsp?paso=<%=rs.getString(1)%>&admin=<%=user%>">
                                    <h5>Editar Datos</h5>
                                </a>
                            </td>
                        </tr>
                    </div>


                    <%
                            }
                            sta.close();
                            cnx.close();
                            rs.close();
                        } catch (SQLException error) {
                        }
                    %>
                </table>
            </div>

        </div>

        <footer class="main-footer">
            <div class="footer__section">
                <h2 class="footer__title">¿Quiénes somos?</h2>
                <p class="footer__txt">Somos una empresa dedicada a generar un mayor alcance sobre los diferentes mercados que existen en México.</p>
            </div>
            <div class="footer__section">
                <h2 class="footer__title">Página Web</h2>
                <p class="footer__txt">ChiliSoftware.com</p>
                <h2 class="footer__title">Contacto</h2>
                <p class="footer__txt">Celular : 5528502597</p>
                <p class="footer__txt">Email : ChiliSoftware@gmail.com</p>
            </div>
            <div class="footer__section">
                <h2 class="footer__title">Menu</h2>
                <a href="index.html" class="footer__link">INICIO</a>
                <a href="tienda.html" class="footer__link">TIANGUISES</a>
                <a href="nosotros.html" class="footer__link">NOSOTROS</a>
                <a href="sesion.html" class="footer__link">SESION</a>
                <a href="contacto.html" class="footer__link">AYUDA</a>
            </div>
            <div class="footer__section">
                <h2 class="footer__title">Registrate</h2>
                <p class="footer__txt">En tu primera compra obtienes envio gratis.</p>
                <form action="gratis.jsp" method="post" class="footer__link">
                    <input type="email" class="footer__input" placeholder="Ingresa tu email" name="Email">
                    <input type="submit" value="Enviar" id="form_button">
                </form>
            </div>
            <p class="copy">© 2022 | Design by ChiliSoftware</p>
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
