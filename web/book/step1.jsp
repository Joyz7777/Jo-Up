<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/30
  Time: 1:19 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BOOK STORE</title>
</head>
<body>

    <form action="<%=request.getContextPath()%>/book/step1" method="post">
        <table cellpadding="10" border="1" cellspacing="0">
            <tr>
                <td>书名</td>
                <td>购买</td>
            </tr>
            <tr>
                <td>Java</td>
                <td><input type="checkbox" name="book" value="Java"></td>
            </tr>
            <tr>
                <td>Spring</td>
                <td><input type="checkbox" name="book" value="Spring"></td>
            </tr>
            <tr>
                <td>SpringMVC</td>
                <td><input type="checkbox" name="book" value="SpringMVC"></td>
            </tr>
            <tr>
                <td>SpringCloud</td>
                <td><input type="checkbox" name="book" value="SpringCloud"></td>
            </tr>
            <tr>
                <td>SpringBatch</td>
                <td><input type="checkbox" name="book" value="SpringBatch"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit"></td>
            </tr>
        </table>
    </form>

</body>
</html>
