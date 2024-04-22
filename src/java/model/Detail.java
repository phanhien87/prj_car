/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Detail {
    private String detail_id,color_id,color,id,interior,interior_img,color_img;

    public Detail() {
    }

    public Detail(String color_id, String color, String id, String interior, String interior_img, String color_img,String detail_id) {
        this.color_id = color_id;
        this.color = color;
        this.id = id;
        this.interior = interior;
        this.interior_img = interior_img;
        this.color_img = color_img;
        this.detail_id = detail_id;
    }

    public String getDetail_id() {
        return detail_id;
    }

    public void setDetail_id(String detail_id) {
        this.detail_id = detail_id;
    }

    public String getColor_id() {
        return color_id;
    }

    public void setColor_id(String color_id) {
        this.color_id = color_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getInterior() {
        return interior;
    }

    public void setInterior(String interior) {
        this.interior = interior;
    }

    public String getInterior_img() {
        return interior_img;
    }

    public void setInterior_img(String interior_img) {
        this.interior_img = interior_img;
    }

    public String getColor_img() {
        return color_img;
    }

    public void setColor_img(String color_img) {
        this.color_img = color_img;
    }
    
}
