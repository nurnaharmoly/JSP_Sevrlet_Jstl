
package com.apress.projsp.store;
public class Product {
    private int id;
    private String name;
    private int cobe;

    public Product() {
    }

    public Product(int id, String name, int cobe) {
        this.id = id;
        this.name = name;
        this.cobe = cobe;
    }

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

    public int getCobe() {
        return cobe;
    }

    public void setCobe(int cobe) {
        this.cobe = cobe;
    }
    
    
    
}
