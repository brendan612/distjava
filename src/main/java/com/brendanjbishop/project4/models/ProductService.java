package com.brendanjbishop.project4.models;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ProductService {

    public List<Product> productList = Arrays.asList(
        new Product("Butter","A2",34.34),
        new Product("Apples","A3",4.74),
        new Product("Chocolate","A4",9.21)
    );
    
    public Product getProductById(String id){
        Product p = null;
        for(Product x : productList){
            if(x.getId().equalsIgnoreCase(id)) return x;
        }
        return p;
    } 
    public List<Product> findProducts(String search) {
        List<Product> ret = new ArrayList<>();
        for (Product p : productList) {
            search = search.toLowerCase();
            if (p.nameContainsIgnoreCase(search)){
                ret.add(p);
            }
        }
        return ret;
    }
}
