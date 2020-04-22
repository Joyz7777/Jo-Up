package com.jo;

import javax.servlet.*;
import java.io.IOException;
import java.util.Enumeration;

public class HelloServlet implements Servlet {

    //private ServletConfig config;


    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        String name = servletConfig.getInitParameter("charset");

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {

    }
}
