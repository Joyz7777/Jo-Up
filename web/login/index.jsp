<%@ page import="java.text.CollationKey" %><%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/26
  Time: 6:28 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>




    <%
        //1. 有cookie 验证cookie
        //2. 无 cookie 有登陆信息
        //3. 无cookie 无信息
        String name = request.getParameter("name");
        if (name != null && !name.trim().equals("")){

            out.print("首次登陆 创建cookie");
            Cookie cookie = new Cookie("name",name);
            cookie.setMaxAge(20);
            response.addCookie(cookie);
        }else {

            Cookie[] cookies = request.getCookies();
            if(cookies.length > 0 ){
                for (Cookie cookie : cookies) {
                    if ("name".equals(cookie.getName())){
                        String value = cookie.getValue();
                        name = value;
                    }
                }

            }
        }
        if (name != null && !name.trim().equals("")){
            out.print("hello___" + name );
        }else {
            response.sendRedirect("login.jsp");
        }

    %>
</body>
</html>
