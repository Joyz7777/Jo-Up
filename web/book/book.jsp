<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2020/4/26
  Time: 10:31 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>



    <%

        String book = request.getParameter("book");
        out.print(book);
    %>

    <a href="books.jsp">return</a>


    <%
        Cookie[] cookies = request.getCookies();

        ArrayList<Cookie> cookieList = new ArrayList<>();

        Cookie tempCookie = null;

        if (cookies.length >0 && cookies!= null){

            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                if (name.startsWith("cookieBooks")){
                    cookieList.add(cookie);

                    if (cookie.getValue().equals(book)){

                        tempCookie = cookie;
                    }

                }
            }

        }

        //完善cookie显示最近五本书的logic
        if (cookieList.size() >= 5 && tempCookie == null) {

            Cookie cookie = cookieList.get(0);
            tempCookie = cookie;
        }

        if (tempCookie != null){
            tempCookie.setMaxAge(0);
            response.addCookie(tempCookie);
        }


        // 添加cookie


        Cookie cookie = new Cookie("cookieBooks_" + book, book);
        response.addCookie(cookie);

    %>






</body>
</html>
