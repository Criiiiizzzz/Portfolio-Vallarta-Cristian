<%-- 
    Document   : inicio-sesion
    Created on : 9 oct. 2022, 22:42:48
    Author     : Oscar y Cristian
--%>
<%@page  import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        String tema=new String(request.getParameter("tema1").getBytes("ISO-8859-1"), "UTF-8");
        String con=new String(request.getParameter("contrasenia").getBytes("ISO-8859-1"), "UTF-8");
        
            Connection conx=null;
            Statement sta=null;
            ResultSet results=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conx=DriverManager.getConnection("jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta=conx.createStatement();
            }
            catch(SQLException error){
            out.print(error.toString());
            }
            
            try{
                results=sta.executeQuery("select*from CD_av where tema='"+tema+"';");
                if(results.next()){
                
                    %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('Bienvenido a la Página')</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio.html?user=<%=user%>"; }, 3000 );
                    </script>
                    <%
                }else{
                results=sta.executeQuery("select*from adminss where administrador='"+user+"' and contrasenia_admin='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('Bienvenido a la Página Admin')</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio.html?admin=<%=user%>"; }, 3000 );
                    </script>
                    <%
                    
                }else{
                
                %>
               <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>  
               <script>alert('Datos Incorrectos o Usuario inexistente')</script> 
               <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "index.html"; }, 3000 );
                    </script> 
                <%
                    }
                }
                conx.close();
                sta.close();
            }
            catch(SQLException error){
            out.print(error.toString());
            }
            
        %>
    </body>
</html>
