
package com.coderbd.bean;

import com.coderbd.entity.Student;
import com.coderbd.service.StudentService;

public class StudentBean {
    private StudentService service = new StudentService();
    
    private Student student;
    
    private String[] courseCompleted;
    
    
    public void save(){
    String cc = "";
        for (String s : courseCompleted) {
          cc += s +", ";
        }
        student.setCompletedCourse(cc);
        service.saveOrUpdate(student);
    }
    
    public void edit(){
    service.saveOrUpdate(student);
    }
    
    public void del(){
    service.delete(student);
    }
    
    public Student searchById(){
        Student s = new Student();
    service.getByid(student.getId());
    return s;
    }
    
    public void reset(){
     Student student = new Student();
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

    public String[] getCourseCompleted() {
        return courseCompleted;
    }

    public void setCourseCompleted(String[] courseCompleted) {
        this.courseCompleted = courseCompleted;
    }
    
    
    
}
