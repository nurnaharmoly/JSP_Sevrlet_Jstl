
package com.coderbd.domain;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@SessionScoped
@ManagedBean(name = "flightSearchController")
public class FlightSearchController {
    private FlightSearch flight;
    
    public FlightSearch getFlight(){
       if(flight == null){
       flight = new FlightSearch();
       }
    return flight;
    }
}
