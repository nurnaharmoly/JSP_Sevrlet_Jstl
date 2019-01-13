
package com.coderbd;

import java.io.IOException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.apache.jasper.el.JspELException;

public class Moly extends SimpleTagSupport{
    public void doTag() throws JspELException,IOException{
    getJspContext().getOut().write("No idea !!!! :-|");
    }
}
