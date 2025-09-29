<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 29.
  Time: 오후 3:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>

<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    if (id.equals("admin") && pw.equals("1234")) {
        session.setAttribute("userId", id);
        session.setAttribute("userName", "관리자");

        response.sendRedirect("s.login_main.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script>
    alert("아이디나 비밀번호가 틀립니다.");
    history.back();
</script>

</body>
</html>

