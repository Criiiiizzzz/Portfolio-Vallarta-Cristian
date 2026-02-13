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
            
        String user=new String(request.getParameter("user").getBytes("ISO-8859-1"), "UTF-8");
        String con=new String(request.getParameter("contrasenia").getBytes("ISO-8859-1"), "UTF-8");
        
            Connection conx=null;
            Statement sta=null;
            ResultSet results=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conx=DriverManager.getConnection("jdbc:mysql://localhost:3308/MercaTec?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta=conx.createStatement();
            }
            catch(SQLException error){
            out.print(error.toString());
            }
            
            try{
                results=sta.executeQuery("select*from usuarios where usuario='"+user+"' and contrasenia='"+con+"';");
                if(results.next()){
                
                    %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página!');</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-usuario.html?user=<%=user%>"; }, 1000 );
                    </script>
                    <%
                }else{
                results=sta.executeQuery("select*from adminss where administrador='"+user+"' and contrasenia_admin='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Admin!');</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-admin.html?admin=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{
                results=sta.executeQuery("select*from vendedores where usuario_vend='"+user+"' and contrasenia_vend='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Vendedor!');</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-vendedor.html?vendedor=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{
                results=sta.executeQuery("select*from ingeniero_soporte where soporte='"+user+"' and contrasenia_soporte='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Ingeniero de Soporte!')</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-ing-soporte.html?admin=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{
                results=sta.executeQuery("select*from gerente_soporte where gerente='"+user+"' and contrasenia_gerente='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Gerente de Soporte!');</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "reportes-gerSoporte.jsp?admin=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{
                results=sta.executeQuery("select*from gerente_mantenimiento where mantenimiento='"+user+"' and contrasenia_mantenimiento='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Gerente de Mantenimiento!');</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-ger-mantenimiento.html?admin=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{
                results=sta.executeQuery("select*from ingeniero_mantenimiento where mantenimientos='"+user+"' and contrasenia_mantenimientos='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Ingeniero de Mantenimiento!')</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-ing-mantenimiento.html?admin=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{
                results=sta.executeQuery("select*from maestros where user_maes='"+user+"' and contrasenia_maes='"+con+"';");
                if(results.next()){

                %>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
                    <script>alert('¡Bienvenido a la Página Maestro!')</script> 
                    
                    <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "inicio-maestro.html?admin=<%=user%>"; }, 1000 );
                    </script>
                    <%
                    
                }else{


                %>
               <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>  
               <script>alert('Datos Incorrectos o Usuario inexistente');</script> 
               <script type="text/javascript">
                       //Redireccionamiento tras 5 segundos
                       setTimeout( function() { window.location.href = "index.html"; }, 1000 );
                    </script> 
                <%                          }
                                        }
                                    }   
                                }
                            }
                        }
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
