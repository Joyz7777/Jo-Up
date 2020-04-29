<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/30
  Time: 1:45 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Payment Info</title>
</head>
<body>
    <h3>请输入寄送地址和信用卡信息</h3>
    <form action="<%= request.getContextPath()%>/book/step2" method="post">
        <table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <td colspan="2">寄送信息</td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="username"></td>
            </tr>

            <tr>
                <td>寄送地址</td>
                <td><input type="text" name="address"></td>
            </tr>

            <tr>
                <td colspan="2">信用卡信息</td>
            </tr>
            <tr>
                <td>卡类</td>
                <td><input type="radio" name="cardType" value="Visa">Visa
                    <input type="radio" name="cardType" value="Master">Master
                </td>

            </tr>
            <tr>
                <td>卡号</td>
                <td><input type="text" name="cardNo"></td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit">
                </td>
            </tr>




        </table>

    </form>
</body>
</html>
