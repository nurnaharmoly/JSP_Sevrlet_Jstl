
package com.cod.test;

import com.cod.entity.Student;
import com.cod.service.StudentService;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        StudentService service = new StudentService();
//        Student student = new Student();
////          student.setId(3);
//////          student.setName("Shushu");
//////          student.setGender("Female");
//////          student.setCompletCourse("PHP, Java");
//////          student.setRound("Round_37");
//////          service.saveOrUpdate(student);
////
////service.delete(student);

//          Student student = service.getByID(2);
//          System.out.println(student);
        List<Student> list = service.getList();
        System.out.println("size: " + list.size());
        for (Student s : list) {
            System.out.println(s);
        }
    }
}
