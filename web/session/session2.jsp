<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/27
  Time: 10:14 下午
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

        Hello: <%= request.getParameter("username")%>


        <br><br>
        <% session.setAttribute("username",request.getParameter("username") ==""? "请输入用户名":request.getParameter("username"));%>
        <a href="session1.jsp" >重新登录</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="session1.jsp"  onclick="resetUserName()" >注销</a>
       
        <script>
                function resetUserName() {
                        <% session.setAttribute("username","");%>
                }
                
        </script>

</body>
</html>
