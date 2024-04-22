/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Items {

    private Order car;
    private int quantity;
  
    private double subtotal;
    private double discount;
    private double total;
    

    public Items() {
    }

    public Items(Order car, int quantity, double subtotal, double discount, double total) {
        this.car = car;
        this.quantity = quantity;
     
        this.subtotal = subtotal;
        this.discount = discount;
        this.total = total;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


    public Order getCar() {
        return car;
    }

    public void setCar(Order car) {
        this.car = car;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

   
    
    public void calculateSubtotal() {
        this.subtotal = car.getPrice() * quantity;
    }

    public void calculateTotal() {
        this.discount = 0.0;
        this.total = subtotal - discount;
    }
   
}
