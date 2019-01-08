
package domain;

import java.io.IOException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.apache.jasper.el.JspELException;

public class SayHelloTag extends SimpleTagSupport{
    
    @Override
    public void doTag() throws IOException{
    getJspContext().getOut().write("Hello Progammers</br>");
    getJspContext().getOut().write("Ini Sakil</br>");
    getJspContext().getOut().write("Se Akta Valo sele</br>");
    getJspContext().getOut().write("Tar kase meyera nirapod</br>");
    getJspContext().getOut().write("Sobai tar jonno doya koro se jeno mostafiz er moto nosta choritrer odhikari na hoy");
    
    }
    
}
