<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="sesion.css" type="text/css">
        <link rel="stylesheet" href="style.css" type="text/css">
        <script>
            var queryString = window.location.search;
            var urlParams = new URLSearchParams(queryString);
            var userParam = urlParams.get('vendedor');

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
            function inicio() {
                window.location.href = ("inicio-usuario.html?admin=" + userParam);
            }
            function mercados() {
                window.location.href = ("tianguises-usuario.html?admin=" + userParam);
            }
            function catalogo() {
                window.location.href = ("productos-usuario.jsp?admin=" + userParam);
            }
            function nosotros() {
                window.location.href = ("nosotros.html?admin=" + userParam);
            }
            function ayuda() {
                window.location.href = ("contacto.html?admin=" + userParam);
            }
            function perfil() {
                window.location.href = ("perfil.jsp?admin=" + userParam);
            }


            function Modificar() {
                window.location.href = ("modificar-usuario.jsp?admin=" + userParam);
            }

            function Modificar_Productos() {
                window.location.href = ("modificar-productos.jsp?admin=" + userParam);
            }
            function Agregar_Productos() {
                window.location.href = ("agregar-productos.jsp?admin=" + userParam);
            }
        </script>
        <script  src="script.js"></script>
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

                            <!-- ***** Formulario de agregar materia ***** -->
                            <div class="game-details">
                                <div class="row">

                                    <div id="container">
                                        <br>
                                        <h1 style="color: black">&bull; Agregar Producto &bull;</h1>
                                        <br>
                                        <script type="text/javascript">

                                            function submitForm() {
                                                var formulario = document.getElementById("contact_form");
                                                formulario.setAttribute('action', ("agregar-productos2.jsp?vendedor=" + userParam));

                                                formulario.submit();
                                                return true;

                                            }


                                        </script>
                                        <div class="underline">
                                        </div>
                                        <form action="invalid.html" method="post" id="contact_form" onsubmit="return submitForm();">
                                            <div class="telephone">
                                                <label for="name">PRODUCTO</label>
                                                <br><br>
                                                <input type="text" name="nombre"  onkeypress="validar(event, 'letras')" placeholder="Escriba el nombre del producto" pattern="^[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+$"  id="name_input" required>

                                            </div>
                                            <div class="telephone">
                                                <label for="name">PRECIO</label>
                                                <br><br>
                                                <input type="text" name="precio"  onkeypress="validar(event, 'numeros')" placeholder="Escriba el precio del prodcuto"  id="name_input" style="height: 200px" >
                                            </div>
                                            <div class="ciudad">
                                                <label for="ciudad">TIPO:</label>
                                                <br><br>
                                                <select name="TIPO" onchange=" agregarCursos(this, cursos, niveles)" id="ciudad_input" required>
                                                    <option disabled hidden selected>Seleccione la categoria</option>
                                                    <option value="Frutas">Frutas</option>
                                                    <option value="Leguminosas">Leguminosas</option>
                                                    <option value="Carnes">Carnes</option>
                                                    <option value="Refrescos">Refrescos</option>
                                                </select>
                                            </div>
                                            
                                            <br><br>



                                            <div class="submit">
                                                <input type="submit" value="Agregar Producto" id="form_button" />
                                            </div>
                                        </form><!-- // End form -->

                                    </div>


                                </div>
                            </div>

                        </div>
                    </div>
                </div>
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
        <!-- partial -->
        <script  src="script.js"></script>


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
