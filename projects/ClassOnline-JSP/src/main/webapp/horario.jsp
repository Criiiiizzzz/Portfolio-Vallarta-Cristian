<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
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
            var userParam = urlParams.get('user');
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
            function ayuda() {
                window.location.href = ("ayuda.html?user=" + userParam);
            }

            function validar(evento, tipo) {
                var validos = new Array("1234567890", "qwertyuiopasdfghjklñzxcvbnm QWERTYUIOPASDFGHJKLÑZXCVBNM ");

                var x = evento.which ? evento.which : evento.keycode;
                var caracter = String.fromCharCode(x);

                var cual = 1;

                if (tipo === "numeros")
                    cual = 0;

                if (validos[cual].indexOf(caracter) === -1)
                    evento.returnValue = false;
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
                                <li><a id="progreso" class="n" href="javascript:void(0)" onclick="progreso()"> Progreso  </a></li>
                                <li><a id="progreso" class="n" href="javascript:void(0)" onclick="ayuda()"> Ayuda  </a></li>
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
                        <%
                            Connection conx = null;
                            Statement stat = null;
                            ResultSet result = null;
                            PreparedStatement pstat = null;
                            ResultSet results = null;
                            String user = request.getParameter("user");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                stat = conx.createStatement();

                            } catch (SQLException error) {
                                out.print(error.toString());
                            }
                        %>


                        <div class="row">
                            <div class="col-lg-8">
                                <div class="featured-games header-text">
                                    <div class="heading-section">
                                        <h4><em>Horario</em> Personalizado </h4>
                                    </div>
                                    <div style='color: white'>
                                        <table style=" font-size:100% ; color: white; text-align: center; float: center; border: 1px" border="0" width="80%" align="center">
                                            <th colspan="8" style="font-size: 25px; background-color: slategrey">Horario</th>
                                            <tr style="background-color: scrollbar; color: black">
                                                <th>Materia</th>
                                                <th>Profesor</th>
                                                <th>Hora de Entrada</th>
                                                <th>Hora de Salida</th>
                                            </tr>
                                            <%
                                                try {
                                                    result = stat.executeQuery("select*from horario_usuario where usuario='" + user + "';");
                                                    ArrayList<String> horarios = new ArrayList<String>();
                                                    while (result.next()) {
                                                        String con = result.getString("Id_horario");
                                                        horarios.add(con);

                                                    }
                                                    for (int i = 0; i < horarios.size(); ++i) {
                                                        result = stat.executeQuery("select*from horario where Id_horario='" + horarios.get(i) + "'");
                                                        result.next();
                                            %>
                                            <tr>
                                                <td><%=result.getString("materia")%></td>
                                                <td><%=result.getString("profesor")%></td>
                                                <td><%=result.getString("h_entr")%></td>
                                                <td><%=result.getString("h_sal")%></td>

                                            </tr>


                                            <%
                                                }
                                            %></table>  
                                            <%        } catch (SQLException error) {
                                                    out.println(error.toString());
                                                }
                                                conx.close();
                                                result.close();
                                                stat.close();

                                            %>
                                            <br><br><br><br><br><br>
                                        <button onclick="generarPDF()" style="font-size: 14px;
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
                                                          overflow: hidden;">Descargar PDF</button>

                                        <script type="text/javascript">
                                            function generarPDF() {
                                                window.location.href = "horarios.jsp";
                                            }
                                        </script>
                                    </div>

                                    <br><br><br>

                                    <div class="owl-features owl-carousel">
                                        <div class="item">
                                            <div class="thumb">
                                                <img src="" alt="">

                                            </div>
                                            <h4>Lunes<br><span></span></h4>
                                            <ul>
                                                <li><i class="fa fa-star"></i> <%out.println();%></li>
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
                                    <br><br>

                                </div>
                            </div>


                            <div class="col-lg-4">
                                <div class="top-streamers">
                                    <div class="heading-section">
                                        <h4><em>Mi</em> Horario </h4>
                                    </div>
                                    <!--<ul>
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
                                    -->
                                    <script type="text/javascript">

                                        function submitForm() {
                                            var formulario = document.getElementById("contact_form");
                                            formulario.setAttribute('action', ("alta_horario.jsp?user=" + userParam));

                                            formulario.submit();
                                            return true;

                                        }


                                    </script>
                                    <form action="invalid.html" method="post" id="contact_form" onsubmit="return submitForm();">

                                        <h5>Materia</h5>
                                        <br>
                                        <input type="text" placeholder="Materia" name="materia" onkeypress="validar(event, 'letras')">
                                        <br><br>
                                        <h5>Profesor</h5>
                                        <br>
                                        <select name="profesor" id="prof" >
                                            <option value="selecciona">Selecciona una opción</option>
                                            <option value="Juan Manuel">Juan Manuel</option>
                                            <option value="Iliana">Iliana</option>
                                            <option value="Enain">Enain</option>


                                        </select>
                                        <br><br>
                                        <h5>Hora de Entrada</h5>}
                                        <br>
                                        <input type="text" placeholder="00:00" name="h_entr" onkeypress="validar(event, 'numeros')" >
                                        <br><br>
                                        <h5>Hora de Salida</h5>
                                        <br>
                                        <input type="text" placeholder="00:00" name="h_sal" onkeypress="validar(event, 'numeros')">
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
                                                          " type="submit" name="Altas" value="Alta"></left>
                                        </div>
                                    </form>
                                </div>

                            </div>

                        </div>
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
