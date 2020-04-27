<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/27
  Time: 9:07 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
        <body>


    <%
        HttpSession session1 = request.getSession(true);
    %>

    IsNew:  <%= session1.isNew() %>
    <br><br>
    MaxTime: <%= session1.getMaxInactiveInterval()%>
    <br><br>
    LastAccessedTime: <%= session1.getLastAccessedTime()%>
    <br><br>
    CreateTime: <%= session1.getCreationTime()%>
    <br><br>
        <form action="session2.jsp" method="post">
            <input type="text" name="username" value= "<%=session.getAttribute("username")%>">
            <input type="submit">
        </form>

        </body>
</html>
