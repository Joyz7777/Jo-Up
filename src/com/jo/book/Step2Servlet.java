package com.jo.book;

import com.jo.pojo.Customer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Step2Servlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        String cardType = request.getParameter("cardType");
        String cardNo = request.getParameter("cardNo");

        Customer customer = new Customer(username,address,cardType,cardNo);
        request.getSession().setAttribute("customer",customer);

        response.sendRedirect(request.getContextPath() + "/book/confirm.jsp");


    }
}
