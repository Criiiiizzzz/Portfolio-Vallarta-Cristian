<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="application/pdf" %>

<%
// Conexión a la base de datos
String url = "jdbc:mysql://localhost/Devil?autoReconnect=true&useSSL=false";
String user = "root";
String password = "n0m3l0";
Connection conn = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, password);

    // Consulta SELECT
    String sql = "SELECT materia, profesor, h_entr, h_sal FROM horario";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();

    // Generar el PDF
    StringBuilder pdfContent = new StringBuilder();
    pdfContent.append("<table>");
    pdfContent.append("<tr><th>Materia</th><th>Profesor</th><th>Hora de Entrada</th><th>Hora de Salida</th></tr>");

    while(rs.next()) {
        pdfContent.append("<tr>");
        pdfContent.append("<td>").append(rs.getString("materia")).append("</td>");
        pdfContent.append("<td>").append(rs.getString("profesor")).append("</td>");
        pdfContent.append("<td>").append(rs.getString("h_entr")).append("</td>");
        pdfContent.append("<td>").append(rs.getString("h_sal")).append("</td>");
        pdfContent.append("</tr>");
    }

    pdfContent.append("</table>");

    // Configurar la respuesta HTTP
    response.setContentType("application/pdf");
    response.setHeader("Content-Disposition", "attachment; filename=\"horario.pdf\"");

    // Escribir el contenido del PDF
    try (PrintWriter writer = response.getWriter()) {
        writer.write(pdfContent.toString());
        writer.flush();
    }
} catch(Exception e) {
    e.printStackTrace();
} finally {
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>
