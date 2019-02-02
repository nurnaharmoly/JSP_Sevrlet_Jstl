
package com.service;

import com.entity.Student;
import com.unit.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class StudentService {
    
    public static void saveOrUpdate(Student student) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.saveOrUpdate(student);
        tr.commit();
    }
    
    
    public static void delete(Student student) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.delete(student);
        tr.commit();
    }
    
    public static Student getById(int id) {
        Student student = new Student();
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        student = (Student) session.get(Student.class, id);
        tr.commit();
        } catch (Exception e) {
        }
        return student;
    }
    
    
    public static List<Student> getList() {
        List<Student> students = new ArrayList<>();
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        students = session.createQuery("FROM Student").list();
        tr.commit();
        } catch (Exception e) {
        }
        return students;
    }
    
    
    public static boolean getUserByUsernameAndPassword(String username, String password){
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.getCurrentSession();
            Transaction tr = session.beginTransaction();
            Query query = session.createQuery("from Student where username=:username and password=:password");
            query.setString("username", username);
            query.setString("password", password);
            List list = query.list();
            System.out.println("list size " + list.size());
            if(list.size() == 1){
            return true;
            } else{
            return false;
            }
        } catch (Exception e) {
        }
        return false;
    }
}
