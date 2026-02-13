<%@page import="java.util.ArrayList"%>
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
            
            <h1>&bull; Gerente de Soporte &bull;</h1>
          <%
                                                Connection conx = null;
                                                Statement stat = null;
                                                ResultSet result = null;
                                                Statement stat2 = null;
                                                Statement stat3 = null;

                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Mercatec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                    stat = conx.createStatement();
                                                    stat2 = conx.createStatement();
                                                    stat3 = conx.createStatement();
                                                } catch (SQLException error) {
                                                    System.out.println("NO SE PUDO CONECTAR");
                                                    System.out.println(error.getMessage());
                                                }
                                            %>
                                             <div align="center">
                                                <h3>Abiertos</h3>  
                             <table table border='1px' align=center style="margin-top: 20px; width: 800px; height: 100px">
                                                    <th colspan="8" style="font-size: 25px; background-color: gray; color:black; text-align: center; float: relative; ">Reporte</th>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Usuario</th>
                                                        <th>Descripción</th>
                                                        <th>Estado</th>
                                                        <th>Solucion</th>
                                                    </tr>
                                             </div>
                                            <%
                                                try {

                                                    result = stat.executeQuery("select*from reportes where estado='Abierto'");

                                                    while (result.next()) {

                                            %>

                                                    
                                                        <tr>
                                                            <td><%=result.getString(1)%></td>
                                                            <td><%=result.getString(2)%></td>
                                                            <td><%=result.getString(3)%></td>
                                                            <td><%=result.getString(4)%></td>

                                                                <td><%=result.getString(5)%></td>
                                                             <td><a  href="javascript:void(0)" onclick="asignar()"> Asignar </a></td>
                                                        </tr>
                                                    
                                            
                                            



                                            <%                                                    }
                                                } catch (SQLException error) {
                                                    out.print(error.toString());
                                                }
                                            %>
                                                </table>
                                            <div align="center">

                                                <h3>Cerrados</h3>    
                                                       <table table border='1px' align=center style="margin-top: 20px; width: 800px; height: 100px">
                                                    <th colspan="8" style="font-size: 25px; background-color: gray; color:black; text-align: center; float: relative;">Reporte</th>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Usuario</th>
                                                        <th>Descripción</th>
                                                        <th>Estado</th>
                                                        <th>Solucion</th>
                                                    </tr>
                                            </div>
                                            <%
                                                try {

                                                    result = stat.executeQuery("select*from reportes where estado='Cerrado'");

                                                    while (result.next()) {

                                            %>

                                                    
                                                        <tr>
                                                            <td><%=result.getString("Id_reporte")%></td>
                                                            <td><%=result.getString("usuario")%></td>
                                                            <td><%=result.getString("reporte")%></td>
                                                            <td><%=result.getString("estado")%></td>

                                                            <td><%=result.getString("respuesta")%></td>
                                                             <td><a  href="javascript:void(0)" onclick="asignar()"> Asignar </a></td>
                                                        </tr>
                                                    
                                                </table>



                                            <%                                                    }
                                                } catch (SQLException error) {
                                                    out.print(error.toString());
                                                }
                                                conx.close();
                                                stat.close();
                                                stat2.close();
                                                stat3.close();
                                                result.close();


                                            %>

            </table>
            </div>
        </div>
            </div>
            <br>
            <br>
            <br>
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