<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            HttpSession sesion = request.getSession();
            ArrayList<String> listakekas = new ArrayList();
            listakekas =  (ArrayList<String>) session.getAttribute("slistakekas");
            String tipo = request.getParameter("fresa");
            listakekas.add(tipo);
            int sumados = (Integer.parseInt(session.getAttribute("suma").toString()));
            if(tipo.equals("1kg berenjena"))
                sumados=sumados + 52;
            else
            if(tipo.equals("2kg berenjena"))
                sumados=sumados + 104;
            if(tipo.equals("3kg berenjena"))
                sumados=sumados + 156;
            session.setAttribute("suma", sumados);
            session.setAttribute("slistakekas", listakekas);
            
            response.sendRedirect("carrito.jsp");
        %>