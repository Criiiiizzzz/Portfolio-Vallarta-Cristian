<!DOCTYPE html>
<%@page import="java.sql.*,java.io.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title> Devil Software  </title>

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
                window.location.href = ("calificaciones-admin.jsp?user=" + userParam);
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
            function calis() {
                window.location.href = ("calis.jsp?user=" + userParam);
            }
            function juegos() {
                window.location.href = ("juegos.html?user=" + userParam);
            }
            
            function validar(evento, tipo) {
                var validos = new Array("1234567890", "qwertyuiopasdfghjklñzxcvbnm QWERTYUIOPASDFGHJKLÑZXCVBNM");

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

        <!-- ***** Header Area End ***** -->

        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="page-content">

                        <center><h1><font color=#F08080><em> Calculador de promedio </em></h1></center>
                        <br><br>



                        <div class="game-details">
                            <div class="row">


                                <div class="col-lg-12">
                                    <div class="content" >
                                        <div class="row">
                                            <div class="col-lg-6" align="left">

                                                <div class="left-info" align="center">

                                                    <br>
                                                    <form action="calis.jsp" name="formulario"  method="post" > 
                                                        <center><h2 class="create-account"> Ingrese las Calificaciones </h2></center>
                                                        <p>Semestre</p>
                                                        <input type="text" placeholder="Semestre" onkeypress="validar(event, 'letras')" name="sem" id="sem">
                                                        <br><br>
                                                        <p>Primer Parcial</p>
                                                        <input type="text" placeholder="Primero" onkeypress="validar(event, 'numeros')" name="primer" id="primer" >

                                                        <br><br>
                                                        <p>Segundo Parcial</p>
                                                        <input type="text" placeholder="Segundo" onkeypress="validar(event, 'numeros')" name="segundo" id="segundo">
                                                        <br><br>
                                                        <p>Tercer Parcial</p>
                                                        <input type="text" placeholder="Tercero" onkeypress="validar(event, 'numeros')" name="tercero" id="tercero">
                                                        <br><br><br>
                                                        <div class="main-submit" align="center">
                                                            
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
                                                                          overflow: hidden;" type="submit" name="Altas" value="Cargar" ></left>
                                                        </div>

                                                    </form>
                                                    <br>
                                                    <br>

                                                </div>

                                                <div class="left">  
                                                </div>
                                            </div>

                                            <!<!-- Segundo Cuadrante de la derecha en donde ira la tabla de calificaciones -->

                                            <div class="col-lg-6" align="left">

                                                <div class="left-info" align="center">

                                                    <br>
                                                    <center><h2 class="create-account"> Calificaciones: </h2></center>
                                                        <%
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
                                                                result = stat.executeQuery("select * from calificaciones");
                                                                out.println("<table border='1px' align=center>"
                                                                        + "<th>&nbsp Semestre &nbsp  </th>"
                                                                        + "<th>&nbsp  Parcial &nbsp 1  &nbsp</th>"
                                                                        + "<th>&nbsp  Parcial &nbsp 2  &nbsp</th>"
                                                                        + "<th>&nbsp  Parcial &nbsp 3  &nbsp</th>"
                                                                        + "<th>&nbsp  Final     &nbsp</th>");
                                                                while (result.next()) {
                                                                    String sem = result.getString("semestre");
                                                                    String prim = result.getString("primer");
                                                                    String seg = result.getString("segundo");
                                                                    String ter = result.getString("tercero");
                                                                    
                                                                    int primero,segundo,tercero,resultado;
                                                                    
                                                                    primero = result.getInt("primer");
                                                                    segundo = result.getInt("segundo");
                                                                    tercero = result.getInt("tercero");
                                                                    
                                                                    resultado = (primero +segundo +tercero)/3;
            
                                                                    out.println("<tr>");
                                                                    out.println("<td>" + sem + "</td>");
                                                                    out.println("<td>" + prim + "</td>");
                                                                    out.println("<td>" + seg + "</td>");
                                                                    out.println("<td>" + ter + "</td>");
                                                                    out.println("<td>" + resultado + "</td>");
                                                                    out.println("</tr>");
                                                                }
                                                                out.println("</table>");
                                                                //out.println("<script>alert('son todos');</script>");

                                                            } catch (SQLException error) {
                                                                out.println(error.toString());
                                                            }
                                                            conx.close();
                                                            result.close();
                                                            stat.close();
                                                        %>
                                                    <br>
                                                    <br>

                                                </div>

                                                <div class="left">  
                                                </div>
                                            </div>
                                            <div class="main-button" align="center">
                                                <left><a  href="javascript:void(0)" onclick="inicio()"> Volver </a></left>
                                            </div>


                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                    <!-- ***** Details End ***** -->

                    <!-- ***** Other Start ***** -->


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
