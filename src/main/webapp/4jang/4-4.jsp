<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 8.
  Time: 오후 3:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Circle</title>
</head>
<body>

<% int radius = Integer.parseInt(request.getParameter("width")); %><br>
<% double extend = radius * radius * Math.PI; %>
<% double circumference = 2 * Math.PI * radius ; %>

반지름: <%=request.getParameter("width" )%><br>
넓이: <%=extend%><br>
둘레: <%=circumference%><br>


</body>
</html>
