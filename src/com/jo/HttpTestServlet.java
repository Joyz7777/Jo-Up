package com.jo;

import javax.naming.Name;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class HttpTestServlet extends HttpServlet {

    private ServletConfig config;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String paramVal = this.config.getInitParameter("charset");//获取指定的初始化参数
        resp.getWriter().print(paramVal);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        String[] interests = req.getParameterValues("interest");

        for (String interest : interests) {
            response.getWriter().println(interest);
        }




    }

}
