
package com.cod.been;

import com.cod.entity.Student;
import com.cod.service.StudentService;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class StudentBeen {
    private Student student;
    private String[] courseCompleted;
    
    public void  saveStu(){
            String cc ="";
            for (String s : courseCompleted) {
            cc += s + ", ";
        }
        StudentService service = new StudentService();
        service.saveStudent(student);
        System.out.println("Success");
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

    public String[] getCourseCompleted() {
        return courseCompleted;
    }

    public void setCourseCompleted(String[] courseCompleted) {
        this.courseCompleted = courseCompleted;
    }
    
    
}
