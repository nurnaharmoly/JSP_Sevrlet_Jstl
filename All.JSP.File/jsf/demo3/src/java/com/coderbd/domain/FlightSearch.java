
package com.coderbd.domain;
public class FlightSearch {
    private String originiation;
    private String destination;
    private String departDate;
    private String departTime;
    private String returnDate;
    private String returnTime;

    public FlightSearch() {
    }

    public FlightSearch(String originiation, String destination, String departDate, String departTime, String returnDate, String returnTime) {
        this.originiation = originiation;
        this.destination = destination;
        this.departDate = departDate;
        this.departTime = departTime;
        this.returnDate = returnDate;
        this.returnTime = returnTime;
    }

    public String getOriginiation() {
        return originiation;
    }

    public void setOriginiation(String originiation) {
        this.originiation = originiation;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getDepartDate() {
        return departDate;
    }

    public void setDepartDate(String departDate) {
        this.departDate = departDate;
    }

    public String getDepartTime() {
        return departTime;
    }

    public void setDepartTime(String departTime) {
        this.departTime = departTime;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    public String getReturnTime() {
        return returnTime;
    }

    public void setReturnTime(String returnTime) {
        this.returnTime = returnTime;
    }
    
    
}
