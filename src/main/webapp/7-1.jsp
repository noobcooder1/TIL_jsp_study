<%--
  Created by IntelliJ IDEA.
  User: a1
  Date: 25. 9. 22.
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
 <!doctype html>
 <html>
 <head>
         <meta charset="utf-8">
     </head>
 <body>

 <form action="7-2.jsp" method="post" enctype="multipart/form-data">
    업로드할 파일을 선택하세요.<br>
    <input type="file" name="upload"><br>
    <input type="submit" value="업로드">
</form>

 </body>
 </html>

