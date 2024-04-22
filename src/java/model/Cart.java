/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.CarDAO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Cart {
    private List<Items> itemsList;

    public Cart() {
        itemsList = new ArrayList<>();
    }

    public void setItemsList(List<Items> itemsList) {
        this.itemsList = itemsList;
    }
    
    public List<Items> getItemsList() {
        return itemsList;
    }

    public void addToCart(String name,String color) {
        CarDAO dao = new CarDAO();
        Order o = dao.getOrderByNC(name, color);
        boolean itemExists = false;
        for (Items item : itemsList) {
            if (item.getCar().getId_detail().equals(o.getId_detail())) {
                item.setQuantity(item.getQuantity() + 1);
                item.calculateSubtotal();
                item.calculateTotal();
                itemExists = true;
                break;
            }
        }

        // If the item does not exist, add it to the cart
        if (!itemExists) {
            try {
                CarDAO carDAO = new CarDAO();
                Order car = carDAO.getOrderByNC(name, color);
                if (car != null) {
                    Items newItem = new Items();
                    newItem.setCar(car);
                    newItem.calculateSubtotal();
                    newItem.calculateTotal();
                    itemsList.add(newItem);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    public void updateQuantity(List<Items> lsCart, String id, String action) {
        for (Items item : lsCart) {
            if (id.equals(item.getCar().getId_detail())) {
                int currentQuantity = item.getQuantity();
                if ("increase".equals(action)) {
                    item.setQuantity(currentQuantity + 1);
                } else if ("decrease".equals(action) && currentQuantity > 1) {
                    item.setQuantity(currentQuantity - 1);
                }
                break;
            }
        }
    }
     public void removeItemFromCart(List<Items> cart, String itemId) {
        for (Iterator<Items> iterator = cart.iterator(); iterator.hasNext();) {
            Items item = iterator.next();
            if (item.getCar().getId_detail().equals(itemId)) {
                iterator.remove();
                break;
            }
        }
       
    }
}