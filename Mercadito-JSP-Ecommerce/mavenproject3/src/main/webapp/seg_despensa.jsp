<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
        <link rel="stylesheet" href="sesion.css" type="text/css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header class="main-header">
                <div class="container container--flex">
                    <div class="main-header__container">
                        <h1 class="main-header__title">MERCATEC</h1>
                        <span class="icon-menu" id="btn-menu"><i class="fas fa-bars"></i></span>
                        <nav class="main-nav" id="main-nav">
                            <ul class="menu">
                                <li class="menu__item"><a href="index.html" class="menu__link">INICIO</a></li>
                                <li class="menu__item"><a href="tianguises.html" class="menu__link">TIANGUISES</a>
                                <li class="menu__item"><a href="nosotros.html" class="menu__link">NOSOTROS</a></li>
                                <li class="menu__item"><a href="usuario.html" class="menu__link">SESION</a></li>
                                <li class="menu__item"><a href="contacto.html" class="menu__link">AYUDA</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="main-header__container" align="left">
                        <span class="main-header__txt">Reportar Problema</span>
                        <p class="main-header__txt"> Llama 5528502597</p>
                    </div>
                    <div class="main-header__container">
                        <a href="sesiiones.html" class="main-header__link"><img src="imagenes/usuario2.png" style="width: 15px; height: 15px"></a>
                        <a href="carrito.jsp" class="main-header__btn">Mi carrito</a> 
                        <input type="search" class="main-header__input" placeholder="Buscar productos">
                        
                        <a href="index.html"><img src="imagenes/lupa.png" style="width: 20px; height: 20px"></a>
                    </div>
                </div>
            </header>
        <div id="container">
            <h1>&bull; Carrito de Compras &bull;</h1>
            <div class="underline">
            </div>
            <div class="product" data-name="p-2">
                    <a href="seg_despensa.jsp"><img src="imagenes/mediana.jpg" alt=""></a>
                    <h3>Intermedia</h3>
                    <div class="price">$1000.00</div>
                </div>

              <form action="jitomates.jsp" method="post">
                        <input type="text" value="Despensa intermedia" name="nombre" readonly>
                        <input type="text" value="" name="cantidad">
                <br><br>
                        <input type="text" value="1000.00" name="precio" readonly>
                        
                        <button class="btn" type="submit" >AGREGAR <img src="https://www.htmlcssbuttongenerator.com/iconExample-small-thumbnail-filled.svg" style="width:25px; margin-left:14px; margin-right:3px; flex-direction: row;"></button>
                    
                    </form>
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
    </body>
</html>