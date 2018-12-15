
package com.coder;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@SessionScoped
@ManagedBean
public class StudentController {
    private StudemtDom stu;

    public StudemtDom getStu() {
        if(stu == null){
        stu = new StudemtDom();
        }
        return stu;
    }

    public void setStu(StudemtDom stu) {
        this.stu = stu;
    }

    
    
}
