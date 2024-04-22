/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Car {
    private String id,name,img,description,idt;
    private double price;

    public Car() {
    }

    public Car(String id, String name, String img, String description, double price,String idt) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.idt = idt;
        this.description = description;
        this.price = price;
    }

    public String getIdt() {
        return idt;
    }

    public void setIdt(String idt) {
        this.idt = idt;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImg() {
        return img;
    }

    

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImg(String img) {
        this.img = img;
    }

    

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}
