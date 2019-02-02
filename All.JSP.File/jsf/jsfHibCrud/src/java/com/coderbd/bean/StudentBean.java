
package com.coderbd.bean;

import com.coderbd.entity.Student;
import com.coderbd.service.StudentService;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class StudentBean {
    private StudentService Service = new StudentService();
    private Student student;
    private String[] courseCompleted;
    
    public void save(){
    String cc = "";
        for (String s : courseCompleted) {
            cc += s + ", ";
        }
    }
    
    public void edit(){
    Service.delect(student);
    }
    
    public void del(){
    Service.delect(student);
    }
    
    public void reset(){
    student = new Student();
    }
    
    public Student searchById(){
     Student s = new Student();
     s = Service.getById(student.getId());
     return s;
    }

    public StudentService getService() {
        return Service;
    }

    public void setService(StudentService Service) {
        this.Service = Service;
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
