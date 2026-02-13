<%@page import="java.lang.Math"%>
<%@page  import="java.sql.*"%>
<%@page  import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            function calis() {
                window.location.href = ("calis.jsp?user=" + userParam);
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
    <body>

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



                        <div class="game-details">
                            <div class="row">


                                <div class="col-lg-12">
                                    <div class="content" >
                                        <div class="row">


                                            
                                            </div>



                                            <!<!-- Segundo Cuadrante de la derecha en donde ira la tabla de calificaciones -->







                                            <%
                                                String sem = request.getParameter("sem");
                                                String prim = request.getParameter("primer");
                                                String seg = request.getParameter("segundo");
                                                String ter = request.getParameter("tercero");
                                                String user = request.getParameter("user");

                                                Random random = new Random();
                                                int cod = random.nextInt(1000000000) + 1;

                                                Connection conx = null; //conexion a una base de datos
                                                Statement sta = null;          //ejecuta un comando sql
                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                                    sta = conx.createStatement();

                                                } catch (SQLException error) {
                                                    out.print(error.toString());
                                                }
                                                try {
                                                    sta.executeUpdate("insert into calificaciones values('" + cod + "','" + sem + "','" + prim + "','" + seg + "','" + ter + "');");
                                                    sta.executeUpdate("insert into calificaciones_usuario values('"+cod+"','"+user+"')");
                                                    out.println("<script>alert('Su calificación se ha dado de alta');</script>");
                                                    conx.close();
                                                    sta.close();
                                                } catch (SQLException error) {
                                                    out.print(error.toString());
                                                }
                                            %>

                                        </div>
                                            <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "calificaciones.jsp?user=<%=user%>"; }, 3000 );
                    </script> 



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



</body>
</html>