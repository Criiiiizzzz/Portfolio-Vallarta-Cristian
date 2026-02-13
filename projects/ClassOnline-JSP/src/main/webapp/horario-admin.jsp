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
                            <a class="logo" href="javascript:void(0)" onclick="inicio()">
                                <head><img style="width:50px; height: 50px;"src="img/LogoD.png" alt="">Devil Software</head>
                            </a>
                            <!-- ***** Menu Start ***** -->
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

                        <!-- ***** Featured Games Start ***** -->
                        <!-- <div class="row">
                          <div class="col-lg-8">
                            <div class="featured-games header-text">
                              <div class="heading-section">
                                <h4><em>Horario</em> (N_Escuela)</h4>
                              </div>
                              <div class="owl-features owl-carousel">
                                <div class="item">
                                  <div class="thumb">
                                    <img src="assets/images/featured-01.jpg" alt="">
                                    
                                  </div>
                                  <h4>CS-GO<br><span>249K Downloads</span></h4>
                                  <ul>
                                    <li><i class="fa fa-star"></i> 4.8</li>
                                    <li><i class="fa fa-download"></i> 2.3M</li>
                                  </ul>
                                </div>
                                <div class="item">
                                  <div class="thumb">
                                    <img src="assets/images/featured-02.jpg" alt="">
                                    <div class="hover-effect">
                                      <h6>2.4K Streaming</h6>
                                    </div>
                                  </div>
                                  <h4>Gamezer<br><span>249K Downloads</span></h4>
                                  <ul>
                                    <li><i class="fa fa-star"></i> 4.8</li>
                                    <li><i class="fa fa-download"></i> 2.3M</li>
                                  </ul>
                                </div>
                                <div class="item">
                                  <div class="thumb">
                                    <img src="assets/images/featured-03.jpg" alt="">
                                    <div class="hover-effect">
                                      <h6>2.4K Streaming</h6>
                                    </div>
                                  </div>
                                  <h4>Island Rusty<br><span>249K Downloads</span></h4>
                                  <ul>
                                    <li><i class="fa fa-star"></i> 4.8</li>
                                    <li><i class="fa fa-download"></i> 2.3M</li>
                                  </ul>
                                </div>
                                <div class="item">
                                  <div class="thumb">
                                    <img src="assets/images/featured-01.jpg" alt="">
                                    <div class="hover-effect">
                                      <h6>2.4K Streaming</h6>
                                    </div>
                                  </div>
                                  <h4>CS-GO<br><span>249K Downloads</span></h4>
                                  <ul>
                                    <li><i class="fa fa-star"></i> 4.8</li>
                                    <li><i class="fa fa-download"></i> 2.3M</li>
                                  </ul>
                                </div>
                                <div class="item">
                                  <div class="thumb">
                                    <img src="assets/images/featured-02.jpg" alt="">
                                    <div class="hover-effect">
                                      <h6>2.4K Streaming</h6>
                                    </div>
                                  </div>
                                  <h4>Gamezer<br><span>249K Downloads</span></h4>
                                  <ul>
                                    <li><i class="fa fa-star"></i> 4.8</li>
                                    <li><i class="fa fa-download"></i> 2.3M</li>
                                  </ul>
                                </div>
                                <div class="item">
                                  <div class="thumb">
                                    <img src="assets/images/featured-03.jpg" alt="">
                                    <div class="hover-effect">
                                      <h6>2.4K Streaming</h6>
                                    </div>
                                  </div>
                                  <h4>Island Rusty<br><span>249K Downloads</span></h4>
                                  <ul>
                                    <li><i class="fa fa-star"></i> 4.8</li>
                                    <li><i class="fa fa-download"></i> 2.3M</li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </div> -->
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="featured-games header-text">
                                    <div class="heading-section">
                                        <h4><em>Horario</em> (N_Escuela)</h4>
                                    </div>
                                    <form action="alta_horario.jsp" name="formulario" id="formulario" method="post" class="formulario" > 
                                       
                                        <h5>Materia</h5>
                                        <br>
                                        <input type="text" placeholder="Materia" name="mat" >
                                        <br><br>
                                        <h5>Profesor</h5>
                                        <br>
                                        <input type="text" placeholder="Nombre Completo" name="prof" >
                                        <br><br>
                                        <h5>Hora de Entrada</h5>}
                                        <br>
                                        <input type="text" placeholder="00:00" name="h_entr" >
                                        <br><br>
                                        <h5>Hora de Salida</h5>
                                        <br>
                                        <input type="text" placeholder="00:00" name="h_sal" >
                                        <br><br>
                                        <div class="main-submit" align="left">
                                            <left> <input style="font-size: 14px;
                                                          color: #fff;
                                                          background-color: #e75e8d;
                                                          padding: 12px 30px;
                                                          display: inline-block;
                                                          border-radius: 25px;
                                                          font-weight: 400;
                                                          text-transform: capitalize;
                                                          letter-spacing: 0.5px;
                                                          transition: all .3s;
                                                          position: relative;
                                                          overflow: hidden;
                                                          " type="submit" name="Altas" value="Cargar"></left>
                                        </div>
                                    </form>
                                    
                                    <br><br><br>

                                    <div class="owl-features owl-carousel">
                                        <div class="item">
                                            <div class="thumb">
                                                <img src="" alt="">

                                            </div>
                                            <h4>Lunes<br><span></span></h4>
                                            <ul>
                                                <li><i class="fa fa-star"></i> 4.8</li>
                                                <li><i class="fa fa-download"></i> 2.3M</li>
                                            </ul>
                                        </div>
                                        <div class="item">
                                            <div class="thumb">
                                                <img src="" alt="">
                                                <div class="hover-effect">
                                                    <h6></h6>
                                                </div>
                                            </div>
                                            <h4>Martes<br><span></span></h4>
                                            <ul>
                                                <li><i class="fa fa-star"></i> 4.8</li>
                                                <li><i class="fa fa-download"></i> 2.3M</li>
                                            </ul>
                                        </div>
                                        <div class="item">
                                            <div class="thumb">
                                                <img src="" alt="">
                                                <div class="hover-effect">
                                                    <h6></h6>
                                                </div>
                                            </div>
                                            <h4>Miercoles<br><span></span></h4>
                                            <ul>
                                                <li><i class="fa fa-star"></i> 4.8</li>
                                                <li><i class="fa fa-download"></i> 2.3M</li>
                                            </ul>
                                        </div>
                                        <div class="item">
                                            <div class="thumb">
                                                <img src="" alt="">
                                                <div class="hover-effect">
                                                    <h6></h6>
                                                </div>
                                            </div>
                                            <h4>Jueves<br><span></span></h4>
                                            <ul>
                                                <li><i class="fa fa-star"></i> 4.8</li>
                                                <li><i class="fa fa-download"></i> 2.3M</li>
                                            </ul>
                                        </div>
                                        <div class="item">
                                            <div class="thumb">
                                                <img src="" alt="">
                                                <div class="hover-effect">
                                                    <h6></h6>
                                                </div>
                                            </div>
                                            <h4>Viernes<br><span></span></h4>
                                            <ul>
                                                <li><i class="fa fa-star"></i> 4.8</li>
                                                <li><i class="fa fa-download"></i> 2.3M</li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-4">
                                <div class="top-streamers">
                                    <div class="heading-section">
                                        <h4><em>Mis</em> Profesores</h4>
                                    </div>
                                    <ul>
                                        <li>
                                            <span>01</span>
                                            <img src="img/profesor.png" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                                            <h6><i class="fa fa-check"></i> N_Profesor</h6>

                                        </li>
                                        <li>
                                            <span>02</span>
                                            <img src="img/profesor.png" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                                            <h6><i class="fa fa-check"></i> N_Profesor</h6>

                                        </li>
                                        <li>
                                            <span>03</span>
                                            <img src="img/profesor.png" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                                            <h6><i class="fa fa-check"></i> N_Profesor</h6>

                                        </li>
                                        <li>
                                            <span>04</span>
                                            <img src="img/profesor.png" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                                            <h6><i class="fa fa-check"></i> N_Profesor</h6>

                                        </li>
                                        <li>
                                            <span>05</span>
                                            <img src="img/profesor.png" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                                            <h6><i class="fa fa-check"></i> N_Profesor</h6>
                                        </li>
                                        <li>
                                            <span>06</span>
                                            <img src="img/profesor.png" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                                            <h6><i class="fa fa-check"></i> N_Profesor</h6>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- ***** Featured Games End ***** -->

                        <!-- ***** Live Stream Start ***** -->
                        <!-- <div class="live-stream">
                          <div class="col-lg-12">
                            <div class="heading-section">
                              <h4><em>Most Popular</em> Live Stream</h4>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-05.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-01.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> Kengan Omeg</span>
                                  <h4>Just Talking With Fans</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-06.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-02.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> LahutaMalc</span>
                                  <h4>CS-GO 36 Hours Live Stream</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-07.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-03.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> Areluwa</span>
                                  <h4>Maybe Nathej Allnight Chillin'</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-08.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-04.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> NewGangTeam</span>
                                  <h4>Live Streaming Till Morning</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-07.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-01.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> Kengan Omeg</span>
                                  <h4>Just Talking With Fans</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-08.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-02.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> LahutaMalc</span>
                                  <h4>CS-GO 36 Hours Live Stream</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-05.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-03.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> Areluwa</span>
                                  <h4>Maybe Nathej Allnight Chillin'</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                              <div class="item">
                                <div class="thumb">
                                  <img src="assets/images/stream-06.jpg" alt="">
                                  <div class="hover-effect">
                                    <div class="content">
                                      <div class="live">
                                        <a href="#">Live</a>
                                      </div>
                                      <ul>
                                        <li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
                                        <li><a href="#"><i class="fa fa-gamepad"></i> CS-GO</a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <div class="down-content">
                                  <div class="avatar">
                                    <img src="assets/images/avatar-04.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;">
                                  </div>
                                  <span><i class="fa fa-check"></i> NewGangTeam</span>
                                  <h4>Live Streaming Till Morning</h4>
                                </div> 
                              </div>
                            </div>
                            <div class="col-lg-12">
                              <div class="main-button">
                                <a href="streams.html">Load More Streams</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- ***** Live Stream End ***** -->

                    </div>
                </div>
            </div>
        </div> -->

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
