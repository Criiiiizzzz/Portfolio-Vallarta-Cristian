<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title> Devil Software </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome-admin.css">
        <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming-admin.css">
        <link rel="stylesheet" href="assets/css/owl-admin.css">
        <link rel="stylesheet" href="assets/css/animate-admin.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <!--
        
        TemplateMo 579 Cyborg Gaming
        
        https://templatemo.com/tm-579-cyborg-gaming
        
        -->
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
                            <a href="inicio.html" class="logo">
                                <head> DEVIL SOFTWARE </head>
                            </a>

                            <ul class="nav">
                                <li><a href="asignaturas.html" class="active"> Volver </a></li>
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
                                result = stat.executeQuery("select*from materias where tipo_materia='Audiovisual'");
                                ArrayList<String> audiovisual = new ArrayList<String>();
                                while (result.next()) {
                                    String con = result.getString("cod_materia");
                                    audiovisual.add(con);
                                }
                                


                        %>
                        <div class="main-banner">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="header-text">
                                        <h6><em> Recursos audiovisuales </em></h6>
                                        <h4><em> Cálculo diferencial   </em></h4>
                                        <div class="main-button">
                                            <a href="calculoaudiovisual.html"> Consultar </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br><br>

                        <div class="main-banner">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="header-text">
                                        <h6><em> Recursos audiovisuales </em></h6>
                                        <h4><em> Quimica Órganica II </em></h4>
                                        <div class="main-button">
                                            <a href="quimicaaudiovisual.html"> Consultar </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br><br>

                        <div class="main-banner">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="header-text">
                                        <h6><em> Recursos audiovisuales </em></h6>
                                        <h4><em> Ingles IV  </em></h4>
                                        <div class="main-button">
                                            <a href="inglesaudiovisual.html"> Consultar </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br><br>
                        
                        <div class="main-banner">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="header-text">
                                        <h6><em> Recursos audiovisuales </em></h6>
                                        <h4><em> <%
                                                    for (int i = 0; i < audiovisual.size(); ++i) {
                                                    result = stat.executeQuery("select*from materias where cod_materia='" + audiovisual.get(i) + "';");
                                                    result.next();
                                                %> </em></h4>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br><br>

                        <br><br>
                        <div class="main-button" style="padding: 10px 400px 20px;">
                            <a href="agregar-tema.html"> 

                                <div class="main-banner2">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <div class="header-text">
                                                <h2> Agregar materia</h2>
                                                <!-- </div> -->

                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </a>
                            

                        </div>
                        
                        </div>
                </div>
            </div>
                                        
        </div>
                                        <%
                            }
                        %>
                        <%
                                    } catch (SQLException error) {
                                        out.print(error.toString());
                                    }
                                    conx.close();
                                    stat.close();
                                    result.close();
                        %>




        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p> Devil Sotware © </p>
                    </div>
                </div>
            </div>
        </footer>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/tabs.js"></script>
        <script src="assets/js/popup.js"></script>
        <script src="assets/js/custom.js"></script>


    </body>

</html>
