<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            HttpSession sesion = request.getSession();
            ArrayList<String> listakekas = new ArrayList();
            listakekas =  (ArrayList<String>) session.getAttribute("slistakekas");
            String tipo = request.getParameter("chica");
            listakekas.add(tipo);
            int sumados = (Integer.parseInt(session.getAttribute("suma").toString()));
            if(tipo.equals("1 despensa $500"))
                sumados=sumados + 500;
            else
            if(tipo.equals("2 despensas $1000"))
                sumados=sumados + 1000;
            if(tipo.equals("3 despensas $1500"))
                sumados=sumados + 1500;
            session.setAttribute("suma", sumados);
            session.setAttribute("slistakekas", listakekas);
            
            response.sendRedirect("carrito.jsp");
        %>