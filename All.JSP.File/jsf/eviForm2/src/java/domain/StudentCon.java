
package domain;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@SessionScoped
@ManagedBean(name = "stu")
public class StudentCon {
    
    private Student student;

    public StudentCon() {
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

   public void reset(){
   student = new Student();
   }
    
    
}
