<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 8.
  Time: 오후 3:16
  To change this template use File | Settings | File Templates.
--%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>

<% int korea = Integer.parseInt(request.getParameter("kor" )); %><br>
<% int eng = Integer.parseInt(request.getParameter("eng" )); %><br>
<% int math = Integer.parseInt(request.getParameter("math" )); %><br>
<% int sum = korea + math + eng; %>
<% double avg = (double)sum/3 ; %>

국어: <%=request.getParameter("kor" )%><br>
영어: <%=request.getParameter("eng" )%><br>
수학: <%=request.getParameter("math")%><br>
총점: <%= sum %><br>
평균: <%= String.format("%.2f", avg) %><br>



</body>
</html>
