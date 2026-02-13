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
                sta.executeUpdate("delete from ingeniero_soporte where soporte='"+cod+"';");
            
                request.getRequestDispatcher("eliminar_soporte.jsp?admin="+user).forward(request,response);
                
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
