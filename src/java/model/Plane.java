/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author TRAN TIEN ANH
 */
public class Plane {
     private int mamb;
    private String tenmb;
    private String hangmb;
    private int soghe;
    private int soghetrong;
    private int tinhtrang;

    public Plane() {
    }

    public Plane(int mamb, String tenmb, String hangmb, int soghe, int soghetrong, int tinhtrang) {
        this.mamb = mamb;
        this.tenmb = tenmb;
        this.hangmb = hangmb;
        this.soghe = soghe;
        this.soghetrong = soghetrong;
        this.tinhtrang = tinhtrang;
    }

    public int getMamb() {
        return mamb;
    }

    public void setMamb(int mamb) {
        this.mamb = mamb;
    }

    public String getTenmb() {
        return tenmb;
    }

    public void setTenmb(String tenmb) {
        this.tenmb = tenmb;
    }

    public String getHangmb() {
        return hangmb;
    }

    public void setHangmb(String hangmb) {
        this.hangmb = hangmb;
    }

    public int getSoghe() {
        return soghe;
    }

    public void setSoghe(int soghe) {
        this.soghe = soghe;
    }

    public int getSoghetrong() {
        return soghetrong;
    }

    public void setSoghetrong(int soghetrong) {
        this.soghetrong = soghetrong;
    }

    public int getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(int tinhtrang) {
        this.tinhtrang = tinhtrang;
    }
    
    
}
