<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            HttpSession sesion = request.getSession();
            ArrayList<String> listakekas = new ArrayList();
            listakekas =  (ArrayList<String>) session.getAttribute("slistakekas");
            String tipo = request.getParameter("fresa");
            listakekas.add(tipo);
            int sumados = (Integer.parseInt(session.getAttribute("suma").toString()));
            if(tipo.equals("1kg Jengibre"))
                sumados=sumados + 189;
            else
            if(tipo.equals("2kg Jengibre"))
                sumados=sumados + 378;
            if(tipo.equals("3kg Jengibre"))
                sumados=sumados + 567;
            session.setAttribute("suma", sumados);
            session.setAttribute("slistakekas", listakekas);
            
            response.sendRedirect("carrito.jsp");
        %>
