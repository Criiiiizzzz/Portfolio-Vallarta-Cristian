<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="paquete.ConexionBD"%>

<%
    
    
    
    Connection conn = ConexionBD.conectarBaseDatos();
    Statement st = null;
    ResultSet rs = null;

    String correo_in= request.getParameter("email_in");
    String pass_in= request.getParameter("pass_in");
 
    
    if(request.getParameter("email_in") != null){
        
        //Se establecen las variables para realizar la consulta SQL
        System.out.println("*****************CONSULATAR INICIO SESION**************************");

        
        String query="";
        try{
            // Se crea un Statement, para realizar la consulta
            st = conn.createStatement();
            query="SELECT email,contra FROM usuarios WHERE email='" + correo_in + "' and contra='" + pass_in + "'";
            rs = st.executeQuery(query);
            System.out.println("<br>El Query Ejecutado es: <br>"+query);

                if (rs.next()){
                
                    System.out.println("Entro en el if");
                    HttpSession sesion = request.getSession();

                    sesion.setAttribute("email", correo_in);
                    sesion.setAttribute("contra", pass_in);

                
                    response.sendRedirect("inicio.jsp");
                
                }else{
                     response.sendRedirect("index.jsp");
                     }
                    
        }
        catch(SQLException e){
            System.out.println("<br>No se pudo completar la operación: <br>"+e.getMessage()+"<br>");
            System.out.println(query);
        }
        /*
        * Se debe cerrar la conexión si o sí 
        * hay Resultset o un Statement.
        */
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqlEx) {
            } // ignore
            rs = null;
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException sqlEx) {
                } // ignore
                st = null;
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World!</h1>
    </body>
</html>
