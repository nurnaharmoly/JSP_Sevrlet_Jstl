
package com.coderbd.entity;

import javax.persistence.Entity;

@Entity
public class Student {
    private int id;
    private int name;
    private int gender;
    private int round;
    private int completeCourse;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getName() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getRound() {
        return round;
    }

    public void setRound(int round) {
        this.round = round;
    }

    public int getCompleteCourse() {
        return completeCourse;
    }

    public void setCompleteCourse(int completeCourse) {
        this.completeCourse = completeCourse;
    }
    
    
}
