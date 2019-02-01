
package com.test;

import com.entity.Student;
import com.service.StudentService;

public class Test {
    public static void main(String[] args) {
        StudentService service = new StudentService();
        Student student = new Student();
        student.setName("holy");
        student.setGender("female");
        student.setCompletedCourse("java, ora");
        student.setRound("Round_37");
        student.setMsg("hiii");
        service.saveOrUpdate(student);
    }
}
