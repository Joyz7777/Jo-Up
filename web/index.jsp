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

          <br>

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

            var number = parseInt("11",2);
            console.log(number)


            console.log(+"22");
            console.log(+"010");
            console.log(+"0x10");

            console.log(1 / 0)
            console.log(-1 / 0)

            var b2 = isFinite(1/0);
            var b1 = isFinite(1/1);

            console.log(b2 +"-----"+ b1)


            var action ='drawIt';

            switch(action) {
                case 'draw':
                    drawIt();
                    break;
                case 'eat':
                    eatIt();
                    break;
                default:
                    doNothing();
            }




            var a = 2;
            switch(a) {
                case 1: // 继续向下
                case 2:
                    eatIt();
                    break;
                default:
                    doNothing();
            }



            function drawIt() {
                console.log("drawIt")
            }
            function eatIt() {
                console.log("eatIt")
            }
            function doNothing() {
                console.log("doNothing")
            }
        </script>

  </body>
</html>
