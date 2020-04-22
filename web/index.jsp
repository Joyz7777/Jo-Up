<%@ page import="com.jo.pojo.Tomcat" %>
<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: zhouzhifeng
  Date: 2020/4/21
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <%
        Tomcat tomcat = new Tomcat("8");
        String version = tomcat.getVersion();
        System.out.println(version);
        response.getWriter().println(version);
      %>

      <button onclick="aa()"> 快点我 </button>
      <button onfocus="aa()"> 快摸我</button>
      <form>

          姓名：<input onfocus="aa()">
          年龄：<input onchange="aa()" placeholder=""22>
      </form>
        <script>

            var a = "222";
            var b = 222;
            // alert(a===b)

            function aa() {
                alert("方法被触发");
            }
            console.log("hhhh22hh".length);
            console.log("1234567".charAt(0));
            console.log("hello, world".replace("world", "jason")); // "hello, mars"

            console.log("hello, world".toUpperCase())
        </script>

  </body>
</html>
