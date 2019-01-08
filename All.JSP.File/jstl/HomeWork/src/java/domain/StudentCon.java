package domain;

import java.util.ArrayList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@SessionScoped
@ManagedBean(name = "std")
public class StudentCon {

    private Student stdu;

    public StudentCon() {
    }

    public Student getStdu() {
        if (stdu == null) {
            stdu = new Student();
        }
        return stdu;
    }

    public void setStdu(Student stdu) {
        this.stdu = stdu;
    }

    public void reset() {
        stdu = new Student();
    }

}
