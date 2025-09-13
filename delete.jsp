<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><%@ page import="java.sql.*" %>
<html>
<head><title>Delete Student</title></head>
<body>
<%
    String idStr = request.getParameter("delid");

    if (idStr != null) {
        try {
            int id = Integer.parseInt(idStr);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "123456");

            PreparedStatement ps = con.prepareStatement("DELETE FROM std WHERE id = ?");
            ps.setInt(1, id);
            int rows = ps.executeUpdate();

            if (rows > 0) {
                out.println("<h3>ID " + id + " deleted successfully!</h3>");
            } else {
                out.println("<h3>ID " + id + " not found!</h3>");
            }

            con.close();
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    } else {
%>
    <h2>Delete Student by ID</h2>
    <form method="get" action="delete.jsp">
        Enter ID to delete: <input type="text" name="delid"><br><br>
        <input type="submit" value="Delete">
    </form>
<%
    }
%>
</body>
</html>

