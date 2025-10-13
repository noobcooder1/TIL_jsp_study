<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 29.
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>


<%
    session.removeAttribute("userId"  );
    session.removeAttribute("userName");

    response.sendRedirect("login_main.jsp");
    // 로그인 메인 화면으로 돌아감
%>


<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>

