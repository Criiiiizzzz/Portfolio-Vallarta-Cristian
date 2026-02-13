<%@page  import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String cod=request.getParameter("paso");
            String user=request.getParameter("admin");
            Connection cnx=null;
            Statement sta=null;
            ResultSet rs=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx=DriverManager.getConnection("jdbc:mysql://localhost:3308/MercaTec?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta=cnx.createStatement();
                request.getRequestDispatcher("nuevos_fruta.jsp?admin="+user).forward(request,response);
                sta.executeUpdate("delete from productos where Id_producto='"+cod+"';");
                
                sta.close();
                rs.close();
                cnx.close();
            }
            catch(SQLException error){
            out.print(error.toString());
            }
        %>
    </body>
</html>
