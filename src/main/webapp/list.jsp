<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!--變幻自在-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table     { width:680px; text-align:center; }
        th        { background-color:cyan; }
        
        .num      { width: 90px; }
        .title    { width:230px; }
        .writer   { width:100px; }
        .regtime  { width:180px; }
                
        a:link    { text-decoration:none; color:purple; }
        a:visited { text-decoration:none; color:gray; }
        a:hover   { text-decoration:none; color:red;  }
    </style>
</head>
<body>

<table>
    <tr>
        <th class="num"    >번호    </th>
        <th class="title"  >제목    </th>
        <th class="writer" >작성자  </th>
        <th class="regtime">작성일시</th>
        <th class="hits"   >조회수  </th>
    </tr>

    <%
        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/jspdb", "jsp", "1234");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from board order by num desc");
                ) {
                while (rs.next()) {
    %>
                    <tr>
                        <td><%=rs.getInt("num")%></td>
                        <td style="text-align:left;"><a href="view.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("title")%></a></td>
                        <td><%=rs.getString("writer")%></td>
                        <td><%=rs.getString("regtime")%></td>
                        <td><%=rs.getString("hits")%></td>
                    </tr>
    <%
                }

        } catch(Exception e) {
            out.println(e.getMessage());
        }
    %>


    <tr>
        <td>2</td>
        <td style="text-align:left;">
            <a href="view.jsp?num=3">글 제목 2</a>
        </td>
        <td>장길산</td>
        <td>2020-02-06 14:32:25</td>
        <td>31</td>
    </tr>
</table>

<br>
<input type="button" value="게시글작성" onclick="location.href='write.jsp'">

</body>
</html>
