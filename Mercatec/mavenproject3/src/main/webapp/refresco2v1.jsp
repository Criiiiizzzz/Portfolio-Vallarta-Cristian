<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            HttpSession sesion = request.getSession();
            ArrayList<String> listakekas = new ArrayList();
            listakekas =  (ArrayList<String>) session.getAttribute("slistakekas");
            String tipo = request.getParameter("fresa");
            listakekas.add(tipo);
            int sumados = (Integer.parseInt(session.getAttribute("suma").toString()));
            if(tipo.equals("1lt Sprite"))
                sumados=sumados + 40;
            else
            if(tipo.equals("2lt Sprite"))
                sumados=sumados + 80;
            if(tipo.equals("3lt Sprite"))
                sumados=sumados + 120;
            session.setAttribute("suma", sumados);
            session.setAttribute("slistakekas", listakekas);
            
            response.sendRedirect("carrito.jsp");
        %>
