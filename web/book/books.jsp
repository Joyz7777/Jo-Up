<%@ page import="java.awt.print.Book" %><%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/26
  Time: 10:29 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Store</title>
</head>
<body>



    Book Detail<br>
        <a href="book.jsp?book=javaweb">javaweb</a><br>
    <br>
        <a href="book.jsp?book=spring">spring</a><br>
    <br>
        <a href="book.jsp?book=jdbc">jdbc</a><br>
    <br>
        <a href="book.jsp?book=mysql">mysql</a><br>
    <br>
        <a href="book.jsp?book=postgre">postgre</a><br>
    <br>
        <a href="book.jsp?book=js">js</a><br>
    <br>
        <a href="book.jsp?book=jsp">jsp</a><br>
    <br>
        <a href="book.jsp?book=vue">vue</a><br>
    <br>
        <a href="book.jsp?book=react">react</a>

    <br>
    <br>
    <br>


    <%
        Cookie[] cookies = request.getCookies();
        if (cookies.length >0 && cookies!= null){

            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                if (name.startsWith("cookieBooks")){

                    out.println(cookie.getValue());
                }
            }

        }







    %>



</body>
</html>
