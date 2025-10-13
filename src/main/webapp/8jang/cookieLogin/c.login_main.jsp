<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 29.
  Time: 오후 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String userId = null;

    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("userId")) {
                userId = cookie.getValue();
                break;
            }
        }
    }
//쿠키값을 읽는 부분

    if (userId != null) {
  %>

<!-- 로그인이 된 상태일때 표시될 코드 -->
<p><%= userId %>님 환영합니다!</p>
<form action = "c.logout.jsp" method="post">
    <input type = "submit" value = "로그아웃">
</form>

<%
} else {
  %>

<!-- 로그인이 안 된 상태일때 표시될 코드 -->
<form action = "c.login.jsp" method="post">
    아이디: <input type = "text" name="id">
    비밀번호: <input type = "password" name="pw">
    <input type = "submit" value = "로그인">
</form>
<%
    }
%>

</body>
</html>




