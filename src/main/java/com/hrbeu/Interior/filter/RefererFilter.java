package com.hrbeu.Interior.filter;


import org.springframework.http.HttpRequest;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class RefererFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("RefererFilter初始化");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        String referer = request.getHeader("Referer");
        if((referer!=null)&&(referer.trim().startsWith("bank.example"))){
            filterChain.doFilter(servletRequest, servletResponse);
        }else {
            servletRequest.getRequestDispatcher("/index").forward(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
        System.out.println("RefererFilter销毁");
    }
}
