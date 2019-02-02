
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
    private String[] course;
    private List<Student> list;

    
    public void save(){
    String cc = "";
        for (String s : course) {
           cc += s +", "; 
        }
        student.setComCourse(cc);
        service.saveOrUpdate(student);
        student = new Student();
    }
    
    public void del(){
    service.delete(student);
    }
    
    public void reset(){
    student = new Student();
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

    public String[] getCourse() {
        return course;
    }

    public void setCourse(String[] course) {
        this.course = course;
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
