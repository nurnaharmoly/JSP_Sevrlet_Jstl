
package domain;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@SessionScoped
@ManagedBean(name = "stu")
public class StudentCon {
    
    private Student stduu;

    public StudentCon() {
    }
    
    public Student getStduu() {
        if(stduu == null){
        stduu = new Student();
        }
        return stduu;
    }

    public void setStduu(Student stduu) {
        this.stduu = stduu;
    }
    
    public void reset(){
    stduu = new Student();
    }
}
