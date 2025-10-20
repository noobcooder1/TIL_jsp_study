<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 10. 13.
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.time.*" %>

<%
    String writer = request.getParameter("writer");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    if (writer != null && writer.length() > 0 &&
        title != null && title.length() > 0 &&
        content != null && content.length() > 0) {
        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/jspdb", "jsp", "1234");
                Statement stmt = conn.createStatement();
        ) {
            String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0, 8);


            stmt.executeUpdate(String.format("insert into board (writer, title, content, regtime, hits) values ('%s', '%s', '%s', '%s', 0)",
                    writer, title, content, curTime));
        } catch (Exception e) {
            out.println(e.getMessage());
        }
        response.sendRedirect("list.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <script>
        alert("모든항목이 빈칸없이 입력되어야합니다.")
        history.back()                      //이전 창으로 돌아감
    </script>
</body>
</html>
