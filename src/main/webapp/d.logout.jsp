<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 29.
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<%
    session.removeAttribute("userId"  );
    session.removeAttribute("userName");

    response.sendRedirect("d.login_main.jsp");
    // 로그인 메인 화면으로 돌아감
%>
