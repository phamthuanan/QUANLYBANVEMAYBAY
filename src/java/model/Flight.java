/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author TRAN TIEN ANH
 */
public class Flight {
    private int macb;
    private int mamb;
    private int masb;
    private String diemdi;
    private String diemden;
    private Date thoigiandi;
    private Date thoigianden;
    private double khoangthoigian;
    private double gia;
    private int makm;

    public Flight() {
    }

    public Flight(int macb, int mamb, int masb, String diemdi, String diemden, Date thoigiandi, Date thoigianden, double khoangthoigian, double gia, int makm) {
        this.macb = macb;
        this.mamb = mamb;
        this.masb = masb;
        this.diemdi = diemdi;
        this.diemden = diemden;
        this.thoigiandi = thoigiandi;
        this.thoigianden = thoigianden;
        this.khoangthoigian = khoangthoigian;
        this.gia = gia;
        this.makm = makm;
    }

    public int getMacb() {
        return macb;
    }

    public void setMacb(int macb) {
        this.macb = macb;
    }

    public int getMamb() {
        return mamb;
    }

    public void setMamb(int mamb) {
        this.mamb = mamb;
    }

    public int getMasb() {
        return masb;
    }

    public void setMasb(int masb) {
        this.masb = masb;
    }

    public String getDiemdi() {
        return diemdi;
    }

    public void setDiemdi(String diemdi) {
        this.diemdi = diemdi;
    }

    public String getDiemden() {
        return diemden;
    }

    public void setDiemden(String diemden) {
        this.diemden = diemden;
    }

    public Date getThoigiandi() {
        return thoigiandi;
    }

    public void setThoigiandi(Date thoigiandi) {
        this.thoigiandi = thoigiandi;
    }

    public Date getThoigianden() {
        return thoigianden;
    }

    public void setThoigianden(Date thoigianden) {
        this.thoigianden = thoigianden;
    }

    public double getKhoangthoigian() {
        return khoangthoigian;
    }

    public void setKhoangthoigian(double khoangthoigian) {
        this.khoangthoigian = khoangthoigian;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public int getMakm() {
        return makm;
    }

    public void setMakm(int makm) {
        this.makm = makm;
    }
    
    
}
