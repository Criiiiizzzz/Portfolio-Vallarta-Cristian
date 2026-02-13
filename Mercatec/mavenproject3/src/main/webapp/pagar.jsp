<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion= request.getSession();
    int total = (Integer.parseInt(sesion.getAttribute("suma").toString()));
    out.println("Usted debe: $"+total);
    sesion.invalidate();
    out.println("<br><br>");
    out.println("<a href='index.html'>volver al inicio</a>");
%>