
package com.bean;

import com.entity.Student;
import com.service.StudentService;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class StudentBean {
    private StudentService service = new StudentService();
    private Student student;
    private String[] courseCom;
    private List<Student> list;
    
    
    
    public void save(){
     String cc = "";
        for (String s : courseCom) {
           cc += s +", "; 
        }
        student.setCompletedCourse(cc);
        service.saveOrUpdate(student);
    }
    
    public void edit(){
    service.saveOrUpdate(student);
    student = new Student();
    }
    
    public void del(){
    service.delete(student);
    }
    
    public void reset(){
        student = new Student();
    }
    
    public Student searchById(){
    Student s = new Student();
    s = service.getById(student.getId());
    return s;
    }

    public StudentService getService() {
        return service;
    }

    public void setService(StudentService service) {
        this.service = service;
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

    public String[] getCourseCom() {
        return courseCom;
    }

    public void setCourseCom(String[] courseCom) {
        this.courseCom = courseCom;
    }

    public List<Student> getList() {
        list = new ArrayList<>();
        list = service.getList();
        return list;
    }

    public void setList(List<Student> list) {
        this.list = list;
    }
    
    
    
    
}
