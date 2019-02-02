/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Asus
 */
public class SayHelloTag extends SimpleTagSupport {

    @Override
    public void doTag() throws IOException{
        getJspContext().getOut().write("");
        getJspContext().getOut().write("");
        getJspContext().getOut().write("");
        getJspContext().getOut().write("");
        getJspContext().getOut().write("");
    }
}
