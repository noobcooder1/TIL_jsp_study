<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 15.
  Time: 오후 1:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <!DOCTYPE html>
 <html>
 <head>
        <meta charset="UTF-8">
     <title>hi</title>
 </head>
 <body>
     아이디 :   <%=request.getParameter("id"    )%><br>
     비밀번호 : <%=request.getParameter("pw"    )%><br>
     성별 :     <%=request.getParameter("gender")%><br>
     가입경로 : <%=request.getParameter("intro" )%><br>
     주소 :     <%=request.getParameter("addr"  )%><br>
     메모 :     <%=request.getParameter("memo"  )%><br>
 </body>
 </html>