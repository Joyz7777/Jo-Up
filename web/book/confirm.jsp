<%@ page import="com.jo.pojo.Customer" %><%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/30
  Time: 2:24 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirm Information</title>
</head>
<body>


    <%
        Customer customer = (Customer)session.getAttribute("customer");
        String[] book = (String[]) session.getAttribute("book");
    %>

    <table>
        <tr>
            <td>姓名</td>
            <td><%= customer.getUsername()%></td>
        </tr>

        <tr>
            <td>卡类</td>
            <td><%= customer.getCardType()%></td>
        </tr>

        <tr>
            <td>地址</td>
            <td><%= customer.getAddress()%></td>
        </tr>

        <tr>
            <td>选购书籍</td>
            <td>
                <%
                   if (book!= null || book.length !=0  ){
                       for (String item: book){
                           out.print(item);
                           out.print("<br>");
                       }
                   }else {
                       out.print("未选购书籍！");
                   }
                %>
            </td>
        </tr>

    </table>

</body>
</html>
