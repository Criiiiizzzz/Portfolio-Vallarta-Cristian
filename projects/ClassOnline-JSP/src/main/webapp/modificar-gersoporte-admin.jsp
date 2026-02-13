<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*,java.io.*"%>
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
            var userParam = urlParams.get('paso');
            var userParam2 = urlParams.get('admin');
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
            function Cambios() {
                window.location.href = ("cambios.jsp?user=" + userParam);
            }
            function Eliminar() {
                window.location.href = ("eliminar_usuario.jsp?admin=" + userParam2);
            }


        </script>
    </head>

    <body>

        <!-- ** Preloader Start ** -->
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
        <!-- ** Preloader End ** -->

        <!-- ** Header Area Start ** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ** Logo Start ** -->
                            <a class="logo" href="javascript:void(0)" onclick="inicio()">
                                <head><img style="width:50px; height: 50px;"src="img/LogoD.png" alt="">Devil Software</head>
                            </a>

                            <ul class="nav">
                                <li><a class="n" href="javascript:void(0)" onclick="inicio()" class="active" >  Volver</a></li>
                            </ul>    
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ** Menu End ** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ** Header Area End ** -->

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-content">

                        <!-- ** Featured Start ** -->
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
                        <!-- ** Featured End ** -->

                        <!-- ** Details Start ** -->
                        <div class="game-details">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2> Modificar datos de Usuario </h2>
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
                                                    <div align=""class="main-border-button">
                                                        <a  href="javascript:void(0)" onclick="CerrrarSesion()"> Cerrar sesion </a>

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="left-info" align="center" style="color: white">
                                                    <br><br><br>
                                                    
                                                    <script type="text/javascript">

                                                        function submitForm() {
                                                            var formulario = document.getElementById("contact_form");
                                                            formulario.setAttribute('action', ("EDITAR-USUARIO2.jsp?user=" + userParam));

                                                            formulario.submit();
                                                            return true;

                                                        }


                                                    </script>
                                                    <%
                                                        String user = request.getParameter("paso");

                                                        Connection conx = null;
                                                        Statement stat = null;
                                                        ResultSet result = null;

                                                        try {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            conx = DriverManager.getConnection("jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                            stat = conx.createStatement();
                                                        } catch (SQLException error) {
                                                            out.print(error.toString());
                                                        }
                                                        try {
                                                            result = stat.executeQuery("select*from gerente_soporte where gerente='" + user + "'");
                                                            result.next();
                                                    %>
                                                    <form action="" method="post" id="contact_form">
                                                        <p>Usuario</p>
                                                        <div class="">
                                                            <label for="name"></label>
                                                            <input  type="text" placeholder="User" name="admin2" value="<%=user%>" id="name_input" required>
                                                        </div>
                                                        <p>Nombre</p>
                                                        <div class="nombre">
                                                            <label for="name"></label>
                                                            <input  type="text" placeholder="Nombre" name="nombre_gerente" pattern="^[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+$" value="<%=result.getString("nombre_gerente")%>" id="name_input" required>
                                                        </div>
                                                        <p>Email</p>
                                                        <div class="apellidos">
                                                            <label for="apellidos"></label>
                                                            <input  type="text" placeholder="Email" pattern="^[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+$" name="email_gerente" value="<%=result.getString("email_gerente")%>" required>
                                                        </div>
                                                        <p>Contraseña</p>
                                                        <div class="correo">
                                                            <label for="email"></label>
                                                            <input  type="text" placeholder="CONTRASEÑA" name="contrasenia_gerente" id="email_input" value="<%=result.getString("contrasenia_gerente")%>" required>
                                                        </div> 
                                                        <br><br><br>
                                                        <input type="submit" name="btngrabar" value="Cambiar" id="form_button" style="font-size: 14px;
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
                                                           overflow: hidden;"/>
                                                    </form>
                                                </div><!-- // End #container -->
                                            </div>
                                            <%
                                                } catch (SQLException error) {
                                                    out.print(error.toString());
                                                }
                                                if (request.getParameter("btngrabar") != null) {
                                                    String admin = new String(request.getParameter("admin").getBytes("ISO-8859-1"), "UTF-8");
                                                    String user2 = new String(request.getParameter("admin2").getBytes("ISO-8859-1"), "UTF-8");
                                                    String nom = new String(request.getParameter("nombre_gerente").getBytes("ISO-8859-1"), "UTF-8");
                                                    String mail = new String(request.getParameter("email_gerente").getBytes("ISO-8859-1"), "UTF-8");
                                                    String con = new String(request.getParameter("contrasenia_gerente").getBytes("ISO-8859-1"), "UTF-8");
                                                    stat.execute("update gerente_soporte set gerente='" + user2 + "', nombre_gerente='" + nom + "', email_gerente='" + mail + "', contrasenia_gerente='" + con + "'where gerente='" + user + "';");

                                            %>
                                            <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                                            <script>alert('¡Cambios Realizados con éxito!');</script>
                                            <script type="text/javascript">
                                                        //Redireccionamiento tras 5 segundos
                                                        setTimeout(function () {
                                                            window.location.href = "eliminar_soporte.jsp?admin=<%=admin%>";
                                                        }, 3000);
                                            </script> 
                                            <%

                                                    stat.close();
                                                    conx.close();
                                                    result.close();
                                                }
                                            %>
                                        </div>




                                    </div>
                                    <div class="main-button">
                                        <center>
                                            <br><br>
                                            <a  href="javascript:void(0)" onclick="Eliminar()"> Volver </a>
                                        </center>


                                    </div>

                                </div>

                            </div>
                        </div>
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