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

            //Funciones del administrador

            function Consultar_usuarios() {
                window.location.href = ("Consultar_Usuarios.jsp?admin=" + userParam);
            }
            function Eliminar_usuarios() {
                window.location.href = ("eliminar_usuario.jsp?admin=" + userParam);
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
            function Consultar_soporte() {
                window.location.href = ("Consultar_Soporte.jsp?admin=" + userParam);
            }
            function Eliminar_soporte() {
                window.location.href = ("eliminar_soporte.jsp?admin=" + userParam);
            }
            function Agregar_temas() {
                window.location.href = ("agregar-tema.html?admin=" + userParam);
            }
            function Perfil() {
                window.location.href = ("perfil-admin.jsp?admin=" + userParam);
            }





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

                            <ul class="nav">
                                <li><a class="n" href="javascript:void(0)" onclick="inicio()" class="active" >  Volver</a></li>
                            </ul>    
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
                                    <h2>  Administrador </h2>
                                </div>
                                <div class="col-lg-12">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="left-info" align="center">

                                                    <br>
                                                    <div align="center">
                                                        <a href="CD_av_temas.html" class="active"><h5> <script>document.write(userParam);</script> </h5></a>
                                                    </div>

                                                    <ul>
                                                        <li>
                                                            <br>
                                                            <div align="center">
                                                                <img src="img/perfiil.png" style="width: 300px; height: 300px;">
                                                            </div>

                                                        </li>
                                                    </ul>
                                                    <%
                                                        String contra = "";
                                                        Connection conec = null; //conexion a una base de datos
                                                        Statement stat = null;          //ejecuta un comando sql
                                                        ResultSet results = null;
                                                        try {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            conec = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                            stat = conec.createStatement();

                                                        } catch (SQLException error) {
                                                            out.print(error.toString());
                                                        }
                                                        try {
                                                            contra = request.getParameter("admin");
                                                            results = stat.executeQuery("select * from adminss where contrasenia_admin='" + contra + "';");

                                                            if (results.next()) {
                                                                out.println("<br><br>");

                                                                out.println("<div align='center' color='white'>");
                                                                out.println("<p>Nombre:</p>");
                                                                out.println("<p>");
                                                                out.println(results.getString("nombre_admin"));
                                                                out.println("</p>");
                                                                out.println("<p>Email:</p>");
                                                                out.println("<p>");
                                                                out.println(results.getString("email_admin"));
                                                                out.println("</p>");
                                                                out.println("<br><br>");
                                                                out.println("<br>");
                                                                out.println("</div>");

                                                            } else {
                                                                out.println("<script>alert('no existe la persona');</script>");
                                                            }
                                                        } catch (SQLException error) {
                                                            error.toString();
                                                        }
                                                    %>
                                                    <div align=""class="main-border-button">
                                                        <a  href="javascript:void(0)" onclick="CerrrarSesion()"> Cerrar sesion </a>

                                                    </div>

                                                </div>
                                                <!-- esto es el div peuqelo que esta en la pagina (color gris) 
                                        <div class="col-lg-6">
                                            <div class="col-lg-12">
                                                <h2>  Administrador </h2>
                                            </div>
                                        </div>-->
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="left-info" align="left">
                                                    <div align=""class="main-border-button">
                                                        <h3>Seleccione la materia</h3>
                                                        <br>
                                                        <a  href="javascript:void(0)" onclick="Agregar_temas()"> Química </a>
                                                        <br><br>
                                                        <a  href="javascript:void(0)" onclick="Agregar_temas()"> Cálculo Diferencial </a>
                                                        <br><br>
                                                        <a  href="javascript:void(0)" onclick="Agregar_temas()"> Física  </a>
                                                        <br><br>
                                                        <a  href="javascript:void(0)" onclick="Agregar_temas()"> Dibujo Técnico </a>
                                                        <br><br>
                                                        <a  href="javascript:void(0)" onclick="Agregar_temas()">  Inglés IV </a>
                                                        <br>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="main-button">
                                                <center>

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
