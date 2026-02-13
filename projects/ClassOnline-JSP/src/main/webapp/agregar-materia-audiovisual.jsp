<%@page import="java.lang.Math"%>
<%@page  import="java.sql.*"%>
<%@page  import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: black">
    <meta charset="UTF-8">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user=request.getParameter("admin");
            String nom=new String(request.getParameter("nombre").getBytes("ISO-8859-1"), "UTF-8");
            String desc=request.getParameter("descripcion");
            String tip=request.getParameter("TIPO");
            
            %>
                
        <%
            
            Random random = new Random();
            int tema = random.nextInt(1000000000-300)+1;
            
            Connection conx=null;
            Statement sta=null;
            ResultSet results=null;
            
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conx=DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta=conx.createStatement();
            }
            catch(SQLException error){
            out.print(error.toString());
            }
            try{
                sta.executeUpdate("insert into calculo_temas values('"+tema+"','"+nom+"','"+desc+"','"+tip+"');");
                
                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script src="alert6.js"></script> 
                    <script>alert(<%=nom%>)</script>
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "agregar-tema.html?admin=<%=user%>"; }, 3000 );
                    </script>
                    <%
                
                conx.close();
                sta.close();
            }
            catch(SQLException error){
            out.print(error.toString());
            } 
        %>
        
    
    </body>
</html>

