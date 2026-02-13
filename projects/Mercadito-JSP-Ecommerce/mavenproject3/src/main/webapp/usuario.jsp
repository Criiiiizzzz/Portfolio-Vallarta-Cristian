<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <h1>&bull; Usuario  &bull;</h1>
            <div class="underline">
            </div>
            <br><br><br>
            <div align="center">
                <img  style="width: 200px; height: 200px" src="imagenes/usuario.png">   
            </div>

            <%
                String contra = "";
                Connection conec = null; //conexion a una base de datos
                Statement stat = null;          //ejecuta un comando sql
                ResultSet results = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conec = DriverManager.getConnection("jdbc:mysql://localhost/Tianguis?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                    stat = conec.createStatement();

                } catch (SQLException error) {
                    out.print(error.toString());
                }
                try {
                    contra = request.getParameter("contras");
                    results = stat.executeQuery("select * from usuario where contrasenia='" + contra + "';");

                    if (results.next()) {
                        out.println("<br><br>");
                        out.println("<div align='center'>");
                        out.println(results.getString("nombre"));
                        out.println("<br><br>");
                        out.println(results.getString("Apell_P"));
                        out.println("<br><br>");
                        out.println(results.getString("Apell_M"));
                        out.println("<br><br>");
                        out.println(results.getString("Phone"));
                        out.println("<br><br>");
                        out.println(results.getString("Email"));
                        out.println("<br><br>");
                        out.println(results.getString("Estado"));
                        out.println("<br><br>");
                        out.println(results.getString("Municipio"));
                        out.println("</div>");
                        out.println("<br><br>");

                        out.println("<script>alert('consulta exitosa');</script>");

                    } else {
                        out.println("<script>alert('no existe la persona');</script>");
                    }
                } catch (SQLException error) {
                    error.toString();
                }
            %>

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

                            </form>
                        </div>
                        <p class="copy">© 2022 | Design by ChiliSoftware</p>
                    </footer>
                    <!-- partial -->
                    <script  src="script.js"></script>
    </body>
</html>