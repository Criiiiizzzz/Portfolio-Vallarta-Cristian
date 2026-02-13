<%@page import="java.util.ArrayList"%>
<%@page  import="java.sql.*,java.io.*"%>
<%@page import="java.util.ArrayList"%>
<%@page  import="java.sql.*,java.io.*"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="es">
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css"/>
        <link rel="stylesheet" href="catalogo.css"/>
        <script>
            var queryString = window.location.search;
            var urlParams = new URLSearchParams(queryString);
            var userParam = urlParams.get('vendedor');
            
            let preveiwContainer = document.querySelector('.products-preview');
            let previewBox = preveiwContainer.querySelectorAll('.preview');

            document.querySelectorAll('.products-container .product').forEach(product => {
                product.onclick = () => {
                    preveiwContainer.style.display = 'flex';
                    let name = product.getAttribute('data-name');
                    previewBox.forEach(preview => {
                        let target = preview.getAttribute('data-target');
                        if (name == target) {
                            preview.classList.add('active');
                        }
                    });
                };
            });

            previewBox.forEach(close => {
                close.querySelector('.fa-times').onclick = () => {
                    close.classList.remove('active');
                    preveiwContainer.style.display = 'none';
                };
            });

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
                window.location.href = ("inicio-admin.html?admin=" + userParam);
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
                window.location.href = ("perfil-admin.jsp?admin=" + userParam);
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
            function Consultar_Usuarios() {
                window.location.href = ("Consultar_Usuarios.jsp?admin=" + userParam);
            }
            function Modificar_Usuarios() {
                window.location.href = ("eliminar_usuario.jsp?admin=" + userParam);
            }
        </script>
    </head>
    <body style="background-color: white;">
        <section class="Menu">
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
                        <a href="sesiiones.html" class="main-header__link"><img src="imagenes/usuario2.png" style="width: 15px; height: 15px"></a>
                        <a href="carrito.jsp" class="main-header__btn">Mi carrito</a> 
                        <input type="search" class="main-header__input" placeholder="Buscar productos">

                        <a href="index.html"><img src="imagenes/lupa.png" style="width: 20px; height: 20px"></a>
                    </div>
                </div>
            </header>
        </section>
        <section class="container">

            <h3 class="title"> &bull; Leguminosas &bull; </h3>
            <h2 class="main-header__txt">Seleccione a su producto favorito.</h2>

            <div class="products-container">

                
                <%
                    String admin = request.getParameter("vendedor");

                    Connection conx = null;
                    Statement stat = null;
                    ResultSet result = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/MercaTec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        stat = conx.createStatement();
                    } catch (SQLException error) {
                        out.print(error.toString());
                    }
                    try {
                        result = stat.executeQuery("select*from productos_vendedor where tipo_producto='Refrescos'");
                        ArrayList<String> Frutas = new ArrayList<String>();
                        while (result.next()) {
                            String con = result.getString("Id_producto");
                            Frutas.add(con);
                        }


                %>

                <%      for (int i = 0; i < Frutas.size(); ++i) {
                        result = stat.executeQuery("select*from productos_vendedor where Id_producto='" + Frutas.get(i) + "';");
                        result.next();


                %>
                <div class="product" data-name="p-6">
                    <a href="Coca-Cola.jsp"><img src="imagenes/r1.jfif" alt=""></a>
                    <h3 style="text-align: center"><%=result.getString("producto")%></h3>
                        <div class="price">$<%=result.getString("precio")%></div>
                    <a href="eliminar-tema-vendedor.jsp?paso=<%=result.getString("Id_producto")%>&vendedor=<%=admin%>">
                        <h4 style="color:red;">ELIMINAR</h4>
                    </a>
                </div>
            <%
                }
            %>
            <div class="product" data-name="p-6">
                    <div style="margin-top: 100%">
                        <a  href="javascript:void(0)" onclick="Agregar_Productos()"><h2>Agregar Producto</h2></a>
                    </div>
        



        <%
            } catch (Exception e) {
            }
            conx.close();
            stat.close();
            result.close();


        %>

    </div>

</section>
<br><br><br><br>
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

        </form>
    </div>
    <p class="copy">© 2022 | Design by ChiliSoftware</p>
</footer>
<!-- partial -->
<script  src="script.js"></script>
</body>
</html>
