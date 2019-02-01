/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.unit;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter(filterName = "AuthFilter", urlPatterns = {"*.xhtml"})
public class AuthorizationFilter implements Filter{

    public AuthorizationFilter() {
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException{
    
    }
    
 

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try {
            HttpServletRequest reqt = (HttpServletRequest) request;
            HttpServletResponse resp = (HttpServletResponse) response;
            HttpSession ses = reqt.getSession(false);
            
            String regURI = reqt.getRequestURI();
            if(regURI.indexOf("/regi.xhtml") >=0 
                    || regURI.indexOf("/login.xhtml") >=0 
                    || (ses != null && ses.getAttribute("username") != null)
                    || regURI.indexOf("/public/") >=0
                    || regURI.contains("javax.faces.resource")){
                chain.doFilter(request, response);
            }else{
            resp.sendRedirect(reqt.getContextPath() + "/faces/login.xhtml");
        }
        } catch (Exception e) {
        }
    }
    @Override
    public void destroy(){
    }

}
