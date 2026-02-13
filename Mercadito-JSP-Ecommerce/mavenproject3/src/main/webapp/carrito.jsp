<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    
    <style>
table.customTable {
  width: 100%;
  background-color: #FFFAB5;
  border-collapse: collapse;
  border-width: 2px;
  border-color: #000000;
  border-style: groove;
  color: #000000;
}

table.customTable td, table.customTable th {
  border-width: 2px;
  border-color: #000000;
  border-style: groove;
  padding: 5px;
}

table.customTable thead {
  background-color: #F2E591;
}
</style>
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
            
            <h1>&bull; Carrito de Compras &bull;</h1>
            <table style=" font-size:100% ; color: black; text-align: center; float: relative" border="0" width="80%" align="center">
                <th colspan="8" style="font-size: 25px; background-color: #FFFAB5">Productos</th>
                <tr style="background-color: #F2E591">
                    
                    <th>Nombre</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Subtotal</th>
                    <th>Eliminar</th>
                    <th>Agregar</th>
                </tr>
            
                <%

                    String user = request.getParameter("user");

                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/MercaTec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select*from carrito");
                        while (rs.next()) {
                            String pre = rs.getString("precio");
                            String cte = rs.getString("cantidad");

                            int p, c, t;

                            p = rs.getInt("precio");
                            c = rs.getInt("cantidad");
                            t = p * c;
                %>
                <tr>
                    
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td text align="center"><%out.println("" + t + "&nbsp" + "$");%></td>
                    <td><a href ="borrar.jsp?cod=<%=rs.getString("Id")%>">
                            <img src="images/carro.png" alt="" width="60" height="60">
                        </a>
                    </td>
                    <td><a href ="<%=rs.getString("nombre") + ".jsp"%>">
                            <img src="images/carro2.png" alt="" width="60" height="60">
                        </a>
                    </td>
                    
                </tr>
                
                <%
                        }
                        sta.close();
                        cnx.close();
                        rs.close();
                    } catch (SQLException error) {
                    }
                %>
            </table>
            
            <center> <a href="pago.jsp" class="button"><input class="menu__link"type="button" value="PAGAR"></a></center>
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