
package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "stu")
public class Student {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private String name;
    
    private String gender;
    
    @Column(name = "c_course")
    private String completedCoures;
    
    private String round;
    
    private String msg;
    
    private String pass;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCompletedCoures() {
        return completedCoures;
    }

    public void setCompletedCoures(String completedCoures) {
        this.completedCoures = completedCoures;
    }

    public String getRound() {
        return round;
    }

    public void setRound(String round) {
        this.round = round;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", gender=" + gender + ", completedCoures=" + completedCoures + ", round=" + round + ", msg=" + msg + ", pass=" + pass + '}';
    }
    
    
}
