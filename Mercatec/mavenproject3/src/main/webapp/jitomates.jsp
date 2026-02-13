

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math"%>
<%@page  import="java.sql.*"%>
<%@page  import="java.util.Random"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Random random = new Random();
            int cod = random.nextInt(1000 - 300) + 1;
            
            
            String repor = request.getParameter("nombre");
            String estado =request.getParameter("cantidad");
            String respuesta =request.getParameter("precio");
            String id =request.getParameter("Id_producto");
            

            Connection conx = null; //conexion a una base de datos
            Statement sta = null;          //ejecuta un comando sql
            
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conx = DriverManager.getConnection("jdbc:mysql://localhost:3308/Mercatec?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = conx.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                    sta.executeUpdate("insert into carrito values('" + cod + "','" + repor + "','" + estado + "','" + respuesta+ "');");
                
                %>
                <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "carrito.jsp?user=?"; }, 100 );
                    </script>
                    <%
                conx.close();
                sta.close();
            } catch (SQLException error) {
                out.print(error.toString());
                out.println("<script>alert('usuario inexistente');</script>");
            }
        %>
    </body>
</html>
