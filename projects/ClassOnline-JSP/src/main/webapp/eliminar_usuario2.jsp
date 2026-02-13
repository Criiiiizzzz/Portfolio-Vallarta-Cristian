<%@page import="java.util.ArrayList"%>
<%@page  import="java.sql.*,java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user=request.getParameter("admin");
            String cod=request.getParameter("paso");
            Connection cnx=null;
            Statement sta=null;
            ResultSet results=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx=DriverManager.getConnection("jdbc:mysql://localhost:3308/Devil?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta=cnx.createStatement();
                results=sta.executeQuery("select*from calificaciones_usuario where usuario='"+cod+"';");
                ArrayList<String> calificaciones = new ArrayList<String>();
                
                while(results.next()){
                    String con=results.getString("Id_calificacion");
                    calificaciones.add(con);
                }
                for(int i=0; i < calificaciones.size(); ++i){
                    sta.executeUpdate("delete from calificaciones where Id_calificacion='"+Integer.parseInt(calificaciones.get(i))+"';");
            }
                sta.executeUpdate("delete from calificaciones_usuario where usuario='"+cod+"';");
                sta.executeUpdate("delete from usuarios where usuario='"+cod+"';");
            
                request.getRequestDispatcher("eliminar_usuario.jsp?admin="+user).forward(request,response);
                
                sta.close();
                results.close();
                cnx.close();
            }
            catch(SQLException error){
            out.print(error.toString());
            }
        %>
    </body>
</html>
