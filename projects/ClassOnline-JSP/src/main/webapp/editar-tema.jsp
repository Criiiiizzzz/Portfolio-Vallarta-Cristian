<%@page import="java.util.ArrayList"%>
<%@page  import="java.sql.*,java.io.*"%>
<%@page import="java.util.ArrayList"%>
<%@page  import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title> Devil Software_Cálculo Diferencial_Audiovisual </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="sesion.css" type="text/css">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        
        <script type="text/javascript">
            var queryString = window.location.search;
            var urlParams = new URLSearchParams(queryString);
            var userParam = urlParams.get('admin');
            function principal() {
                window.location.href = ("PRINCIPAL-ADMINS.html?admin=" + userParam);
            }
            function ver() {
                window.location.href = ("EDITAR-MENU.jsp?admin=" + userParam);
            }
            function platillo() {
                window.location.href = ("MENU-ADMIN.html?admin=" + userParam);
            }
            function editar() {
                window.location.href = ("MENU2-ADMIN.jsp?admin=" + userParam);
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
        <%
            String cod = request.getParameter("cod");
            String admin = request.getParameter("admin");
            Connection cnx = null;
            Statement sta = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = cnx.createStatement();
                rs = sta.executeQuery("select * from calculo_temas where Id_tema='" + cod + "';");
                rs.next();
                String nom = rs.getString("tema");
                String desc = rs.getString("descripcion");
                String tipo = rs.getString("tipo_tema");
        %>

        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a class="logo" href="javascript:void(0)" onclick="inicio()">
                                <head><img style="width:50px; height: 50px;"src="img/LogoD.png" alt="">Devil Software</head>
                            </a>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
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
                                    <h1 style="color: black">&bull; Editar Tema &bull;</h1>
                                    <br>
                                    <div class="underline">
                                    </div>
                                    <form action="" method="post" id="contact_form">
                                        <div class="telephone">
                                            <label for="name"></label>
                                            <input type="text" placeholder="Nombre del tema"  onkeypress="validar(event, 'letras')" pattern="^[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+$" name="nombre" id="name_input" value="<%=nom%>" required>
                                        </div>
                                        <div class="telephone">
                                            <label for="name"></label>
                                            <input type="text" name="descripcion"  onkeypress="validar(event, 'letras')" placeholder="Escriba el contenido del tema" pattern="^[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1\u00E0-\u00FC]+$"  value="<%=desc%>" required>
                                        </div>
                                        <div class="ciudad">
                                            <label for="ciudad"></label>
                                            <select name="TIPO" onchange=" agregarCursos(this, cursos, niveles)" id="ciudad_input" required>
                                                <option disabled hidden selected>Seleccione la materia</option>
                                                <%
                                                    ArrayList<String> tip = new ArrayList<String>();
                                                    tip.add("Calculo");
                                                    tip.add("Quimica");
                                                    tip.add("Dibujo");
                                                    tip.add("Ingles");
                                                    tip.add("Fisica");

                                                    for (int i = 0; i < tip.size(); i++) {
                                                        if (tip.get(i).equals(tipo)) {
                                                %><option selected value="<%=tip.get(i)%>"><%=tip.get(i)%></option> <%
                                  } else {
                                                %><option value="<%=tip.get(i)%>"><%=tip.get(i)%></option> <%
                                            }
                                        }

                                                %>
                                            </select>
                                        </div>


                                        <div class="submit">
                                            <input type="submit" name="btngrabar" value="Ingresar Materia" id="form_button" />
                                        </div>
                                    </form><!-- // End form -->

                                </div>
                                <div class="main-button">
                                    <center>

                                        <a  href="javascript:void(0)" onclick="inicio()"> Volver </a>
                                    </center>

                                </div>

                            </div>
                        </div>

                    </div>
                    <%            } catch (SQLException error) {
                            out.print(error.toString());
                        }
                        if (request.getParameter("btngrabar") != null) {
                            String nombre = new String(request.getParameter("nombre").getBytes("ISO-8859-1"), "UTF-8");
                            String descripcion = new String(request.getParameter("descripcion").getBytes("ISO-8859-1"), "UTF-8");
                            String tipo_tema = new String(request.getParameter("TIPO").getBytes("ISO-8859-1"), "UTF-8");
                            sta.execute("update calculo_temas set tema='" + nombre + "', descripcion='" + descripcion + "', tipo_tema='" + tipo_tema + "'  where Id_tema='" + cod + "';");

                            RequestDispatcher rd = request.getRequestDispatcher("temas-calculo.jsp?admin=" + admin);
                            rd.forward(request, response);

                            sta.close();
                            cnx.close();
                            rs.close();
                        }
                    %>
                    </body>
                    </html>

