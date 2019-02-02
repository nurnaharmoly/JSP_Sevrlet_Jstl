
package com.coderbd.service;

import com.coderbd.entity.Student;
import com.coderbd.util.NewHibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class StudentService {
    
    public static void saveOrUpdate(Student student) {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.saveOrUpdate(student);
        System.out.println("Success");
        tr.commit();
    }
    
    public static void delete(Student student) {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.delete(student);
        System.out.println("Success");
        tr.commit();
    }
    
    public static Student getByid(int id) {
        Student student = new Student();
        try {
            SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        student = (Student) session.get(Student.class, id);
        System.out.println("Success");
        tr.commit();
        } catch (Exception e) {
        }
        return student;
    }
    
}
