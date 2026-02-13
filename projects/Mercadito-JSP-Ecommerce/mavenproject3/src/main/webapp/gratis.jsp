   <%@ page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="in.css" media="screen"/>
        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Altas</h1>
        <%  
            
        
        String Email = request.getParameter("Email");
         
       
       
     
        
        Connection conx= null;// conexion a una base de datos
        Statement sta=null;        // ejecuta un comando sql
         try{
             Class.forName("com.mysql.jdbc.Driver");
             conx = DriverManager.getConnection("jdbc:mysql://localhost/Tianguis?autoReconnect=true&useSSL=false","root","n0m3l0");
             sta =conx.createStatement();
         }        
         catch(SQLException error){
             out.print(error.toString());

         } 
          try{
              sta.executeUpdate("insert into gratis values( '"+Email+"' );");
              out.println("<script>alert('Cupon canjeado')</script>");
              conx.close();
              sta.close();
          }
          catch(SQLException error){
              out.print(error.toString());
          }

        %>
             <a href="index.html"><input type="submit" value="Regresar"></a>
    </body>
</html>