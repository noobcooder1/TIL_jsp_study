<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 10. 20.
  Time: 오후 3:36
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 10. 20.
  Time: 오후 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
    int num = Integer.parseInt(request.getParameter("num"));

        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/jspdb", "jsp", "1234");
                Statement stmt = conn.createStatement();
        ) {
            stmt.executeUpdate("delete from board where num=" + num);

        } catch (Exception e) {
            out.println(e.getMessage());
        }

        response.sendRedirect("view.jsp?num=" + num);
    // 글번호가 주어졌으면 변수 값을 db에서 읽어와서 채움
%>


