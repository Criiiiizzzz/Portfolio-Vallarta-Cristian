<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <title>ChiliSoftware</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <link rel="stylesheet" href="sesion.css" type="text/css">
        <link rel="stylesheet" href="style.css">

        <script>
            var queryString = window.location.search;
            var urlParams = new URLSearchParams(queryString);
            var userParam = urlParams.get('vendedor');
            
            
            var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
                    overlay = document.getElementById('overlay'),
                    popup = document.getElementById('popup'),
                    btnCerrarPopup = document.getElementById('btn-cerrar-popup');

            btnAbrirPopup.addEventListener('click', function () {
                overlay.classList.add('active');
                popup.classList.add('active');
            });

            btnCerrarPopup.addEventListener('click', function (e) {
                e.preventDefault();
                overlay.classList.remove('active');
                popup.classList.remove('active');
            });

            function inicio() {
                window.location.href = ("inicio-usuario.html?admin=" + userParam);
            }
            function mercados() {
                window.location.href = ("tianguises-usuario.html?vendedor=" + userParam);
            }
            function catalogo() {
                window.location.href = ("productos-usuario.jsp?vendedor=" + userParam);
            }
            function nosotros() {
                window.location.href = ("nosotros.html?vendedor=" + userParam);
            }
            function ayuda() {
                window.location.href = ("contacto.html?vendedor=" + userParam);
            }
            function perfil() {
                window.location.href = ("perfil-vendedor.jsp?vendedor=" + userParam);
            }
            
            function frutas() {
                window.location.href = ("nuevos_fruta_vendedor.jsp?vendedor=" + userParam);
            }
            function leguminosas() {
                window.location.href = ("productos_leguminosas_vendedor.jsp?vendedor=" + userParam);
            }
            function carne() {
                window.location.href = ("productos_carnes_vendedor.jsp?vendedor=" + userParam);
            }
            function refrescos() {
                window.location.href = ("productos_refresco_vendedor.jsp?vendedor=" + userParam);
            }



        </script>
        <!--
        
        TemplateMo 579 Cyborg Gaming
        
        https://templatemo.com/tm-579-cyborg-gaming
        
        -->
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
            
            <main class="main">
                <div class="container">
                    <br><br><br>
                    <section class="container-products">
                        <div class="product">
                            <a class="n" href="javascript:void(0)" onclick="frutas()"><img src="imagenes/frutas.png" alt="" class="product__img"></a>
                            <div class="product__description">
                                <h3 class="product__title">Frutas y Verduras</h3>

                            </div>
                            <i class="product__icon fas fa-cart-plus"></i>
                        </div>
                        <div class="product">
                            <a class="n" href="javascript:void(0)" onclick="leguminosas()"><img src="imagenes/leguminosas.jpg" alt="" class="product__img"></a>
                            <div class="product__description">
                                <h3 class="product__title">Leguminosas</h3>
                            </div>
                            <i class="product__icon fas fa-cart-plus"></i>
                        </div>
                        <div class="product">
                            <a class="n" href="javascript:void(0)" onclick="carne()"><img src="imagenes/carne.png" alt="" class="product__img"></a>
                            <div class="product__description">
                                <h3 class="product__title">Carne</h3>
                            </div>
                            <i class="product__icon fas fa-cart-plus"></i>
                        </div>
                        <div class="product">
                            <a class="n" href="javascript:void(0)" onclick="refrescos()"><img src="imagenes/refrescos.jpg" alt="" class="product__img"></a>
                            <div class="product__description">
                                <h3 class="product__title">Refrescos</h3>
                            </div>
                            <i class="product__icon fas fa-cart-plus"></i>
                        </div>
                    </section>
                    <br><br><br>
                </div>
            </main>
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
        </div>
    </body>

</html>
