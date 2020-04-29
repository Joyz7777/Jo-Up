package com.jo.book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Step1Servlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("111111111");
        String[] books = request.getParameterValues("book");
        request.getSession().setAttribute("book",books);

        //重定向到step2
        response.sendRedirect(request.getContextPath()+ "/book/step2.jsp");
    }
}
