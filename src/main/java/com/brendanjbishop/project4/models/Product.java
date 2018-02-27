package com.brendanjbishop.project4.models;

final public class Product {

    private String name;
    private String id;
    private double price;

    public Product(String name, String id, double price) {
        setName(name);
        setId(id);
        setPrice(price);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public boolean nameContainsIgnoreCase(String search){
        if(this.name.toLowerCase().contains(search) || 
           this.name.toUpperCase().contains(search)){
            return true;
        }
        return false;
    }
    
}
