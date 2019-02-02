
package com.bean;

import com.entity.Student;
import com.service.StudentService;
import com.unit.SessionUtils;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

@ManagedBean
@SessionScoped
public class Login {
    StudentService service = new StudentService();
    
    private Student student;
    
    public String validateUsernamePassword(){
    boolean valid = service.getUserByUsernameAndPassword(student.getUsername(), student.getPassword());
    if(valid){
        HttpSession session = SessionUtils.getSession();
        session.setAttribute("username", student.getUsername());
        return "admin";
    }else{
        FacesContext.getCurrentInstance().addMessage(null, 
                new FacesMessage(FacesMessage.SEVERITY_WARN,
                "Incorrect Username and Password",
                "Please enter correct username and password"));
        return "login";
    }
    }
    
    public String logout(){
     HttpSession session = SessionUtils.getSession();
     session.invalidate();
     return "login";
    }

    public Student getStudent() {
        if(student == null){
        student = new Student();
        }
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
    
    
}
