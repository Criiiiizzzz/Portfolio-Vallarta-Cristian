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
            var userName = urlParams.get('nombre');
            var nameParam = urlParams.get('contrasenia');
            function inicio() {
                window.location.href = ("inicio-usuario.html?user=" + userParam);
            }
            function asignaturas() {
                window.location.href = ("asignaturas.html?user=" + userParam);
            }
            function calificaciones() {
                window.location.href = ("calificaciones.jsp?user=" + userParam);
            }
            function horario() {
                window.location.href = ("horario.jsp?user=" + userParam);
            }
            function progreso() {
                window.location.href = ("progreso.jsp?user=" + userParam);
            }
            function usuario() {
                window.location.href = ("perfil.jsp?user=" + userParam);
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
                            <a href="inicio.html" class="logo">
                                <head>Devil Software </head>
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Search End ***** -->

                            <ul class="nav">
                                <li><a class="n" href="javascript:void(0)" onclick="inicio()"> Inicio </a></li>
                                <li><a class="n" href="javascript:void(0)" onclick="asignaturas()"> Asignaturas </a></li>
                                <li><a class="n" href="javascript:void(0)" onclick="calificaciones()"> Calificaciones  </a></li>
                                <li><a class="n" href="javascript:void(0)" onclick="horario()"> Horario  </a></li>
                                <li><a class="n" href="javascript:void(0)" onclick="progreso()"> Progreso  </a></li>
                                <li><a class="n" href="javascript:void(0)" onclick="usuario()"><script>document.write(userParam);</script><img src="img/perfiil.png" alt=""></a></li>
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

                        <!-- ***** Banner Start ***** -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-profile ">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            
                                        </div>
                                        <div class="col-lg-4 align-self-center">
                                            <div class="main-info header-text">
                                                <span><script>document.write(userParam);</script></span>
                                                <h4><script>document.write(userName);</script></h4>
                                                <p>Descripción_Usuario</p>
                                                <div>
                                                    <a href="https://www.instagram.com/criiiizzzz/"><img style="width: 20px; height: 20px;" src="img/instagram.png" alt=""></a>
                                                    <a href="https://www.instagram.com/criiiizzzz/"><img style="width: 20px; height: 20px; " src="img/facebook.png" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 align-self-center">
                                            <ul>
                                                <li>Estadisticas del jugador</li>
                                            </ul>
                                            <br><br>
                                            <ul>
                                                <li>Ejercicios Realizados <span>#</span></li>
                                                <li>Materia Destacada <span>#</span></li>
                                                <li>Progreso <span>#</span></li>

                                            </ul>
                                            <br><br>
                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="clips">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="heading-section">
                                                            <h4><em>Ejercicios</em> Destacados </h4>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="item">
                                                            <div class="thumb">
                                                                <img src="" alt="" style="border-radius: 23px;">
                                                                <a href="" target="_blank"><i class="fa fa-play"></i></a>
                                                            </div>
                                                            <div class="down-content">
                                                                <h4>Sopas de Letras</h4>
                                                                <span><i class="fa fa-eye"></i> 250</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="item">
                                                            <div class="thumb">
                                                                <img src="" alt="" style="border-radius: 23px;">
                                                                <a href="" target="_blank"><i class="fa fa-play"></i></a>
                                                            </div>
                                                            <div class="down-content">
                                                                <h4>Relación de Columnas</h4>
                                                                <span><i class="fa fa-eye"></i> 183</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="item">
                                                            <div class="thumb">
                                                                <img src="" alt="" style="border-radius: 23px;">
                                                                <a href="https://www.youtube.com/watch?v=r1b03uKWk_M" target="_blank"><i class="fa fa-play"></i></a>
                                                            </div>
                                                            <div class="down-content">
                                                                <h4>Cpmletar oraciones</h4>
                                                                <span><i class="fa fa-eye"></i> 141</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-sm-6">
                                                        <div class="item">
                                                            <div class="thumb">
                                                                <img src="" alt="" style="border-radius: 23px;">
                                                                <a href="https://www.youtube.com/watch?v=r1b03uKWk_M" target="_blank"><i class="fa fa-play"></i></a>
                                                            </div>
                                                            <div class="down-content">
                                                                <h4>Derivadas</h4>
                                                                <span><i class="fa fa-eye"></i> 91</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="main-button">
                                                            <a href="#">Mas ejercicios</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ***** Banner End ***** -->

                        <!-- ***** Gaming Library Start ***** -->
                        <div class="gaming-library profile-library">
                            <div class="col-lg-12">
                                <div class="heading-section">
                                    <h4><em>Porgreso de cada método de </em>aprendizaje </h4>
                                </div>
                                <div class="item">
                                    <ul>
                                        <li><img src="assets/images/game-01.jpg" alt="" class="templatemo-item"></li>
                                        <li><h4>Visual</h4><span></span>?</li>
                                        <li><h4>Inicio</h4><span>24/08/2036</span></li>
                                        <li><h4>Horas </h4><span>634 H 22 Mins</span></li>
                                        <li><h4>Ejercicios realizados</h4><span>#/</span></li>
                                        <li><div class="main-border-button border-no-active"><a href="#">Acerca de</a></div></li>
                                    </ul>
                                </div>
                                <div class="item">
                                    <ul>
                                        <li><img src="assets/images/game-02.jpg" alt="" class="templatemo-item"></li>
                                        <li><h4>Auditivo</h4><span>?</span></li>
                                        <li><h4>Inicio</h4><span>22/06/2036</span></li>
                                        <li><h4>Horas</h4><span>745 H 22 Mins</span></li>
                                        <li><h4>Ejercicios realizados</h4><span>#/</span></li>
                                        <li><div class="main-border-button border-no-active"><a href="#">Acerca de</a></div></li>
                                    </ul>
                                </div>
                                <div class="item last-item">
                                    <ul>
                                        <li><img src="assets/images/game-03.jpg" alt="" class="templatemo-item"></li>
                                        <li><h4>Kinestésico</h4><span>?</span></li>
                                        <li><h4>Inicio</h4><span>21/04/2022</span></li>
                                        <li><h4>Horas</h4><span>632 H 46 Mins</span></li>
                                        <li><h4>Ejercicios realizados</h4><span>#/</span></li>
                                        <li><div class="main-border-button border-no-active"><a href="#">Acerca de</a></div></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- ***** Gaming Library End ***** -->
                    </div>
                </div>
            </div>
        </div>

       <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p> Devil Sotware © </p>
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
