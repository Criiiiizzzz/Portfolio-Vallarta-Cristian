<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*,java.io.*"%>
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
            var userParam = urlParams.get('user');
            function inicio() {
                window.location.href = ("inicio-usuario.html?user=" + userParam);
            }
            function cambiarDatos() {
                window.location.href = ("inicio-usuario.html?user=" + userParam);
            }
            function CerrrarSesion() {
                window.location.href = ("inicio.html");
            }
            function EliminarCuenta() {
                window.location.href = ("calificaciones.html?user=" + userParam);
            }
            function Modificar() {
                window.location.href = ("modificar.jsp?user=" + userParam);
            }
            function volver() {
                window.location.href = ("quimicakinestesico.html?user=" + userParam);
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
                                <li><a class="n" href="javascript:void(0)" onclick="volver()" class="active" >  Volver</a></li>
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
                                    <h2> Nuevos temas Quimica </h2>
                                </div>
                                <div class="col-lg-12">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <%
                                                    String user = request.getParameter("user");

                                                    Connection conx = null;
                                                    Statement stat = null;
                                                    ResultSet result = null;

                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                        stat = conx.createStatement();
                                                    } catch (SQLException error) {
                                                        out.print(error.toString());
                                                    }
                                                    try {
                                                        result = stat.executeQuery("select*from calculo_temas where tipo_tema='Quimica'");
                                                        ArrayList<String> calculos = new ArrayList<String>();
                                                        while (result.next()) {
                                                            String con = result.getString("Id_tema");
                                                            calculos.add(con);
                                                        }


                                                %>

                                                <%      for (int i = 0; i < calculos.size(); ++i) {
                                                        result = stat.executeQuery("select*from calculo_temas where Id_tema='" + calculos.get(i) + "';");
                                                        result.next();


                                                %>
                                                <div class="col-lg-6">
                                                    <div class="left-info">
                                                        <h3><%=result.getString("tema")%></h3>
                                                        <p><%=result.getString("descripcion")%></p>
                                                    </div>
                                                </div>
                                                <%
                                                    }
                                                %>


                                                <%
                                                    } catch (Exception e) {
                                                    }
                                                    conx.close();
                                                    stat.close();
                                                    result.close();


                                                %>


                                                
                                            </div>
                                                <div class="main-button">
                                                    <center>

                                                        <a  href="javascript:void(0)" onclick="volver()"> Volver </a>
                                                    </center>

                                                </div>

                                        </div>
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
