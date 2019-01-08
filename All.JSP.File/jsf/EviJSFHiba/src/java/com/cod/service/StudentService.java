
package com.cod.service;

import com.cod.domain.HibernateUtil;
import com.cod.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class StudentService {
    
    public void saveStudent(Student s){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.save(s);
        tr.commit();
    }
}
