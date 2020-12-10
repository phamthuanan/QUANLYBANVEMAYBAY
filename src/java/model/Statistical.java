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
public class Statistical {
     private int mahd;
    private int makh;
    private int soluongve;
    private double dongia;
    private String hinhthucthanhtoan;
    private Date ngayhd;

    public Statistical() {
    }

    public Statistical(int mahd, int makh, int soluongve, double dongia, String hinhthucthanhtoan, Date ngayhd) {
        this.mahd = mahd;
        this.makh = makh;
        this.soluongve = soluongve;
        this.dongia = dongia;
        this.hinhthucthanhtoan = hinhthucthanhtoan;
        this.ngayhd = ngayhd;
    }

    public int getMahd() {
        return mahd;
    }

    public void setMahd(int mahd) {
        this.mahd = mahd;
    }

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public int getSoluongve() {
        return soluongve;
    }

    public void setSoluongve(int soluongve) {
        this.soluongve = soluongve;
    }

    public double getDongia() {
        return dongia;
    }

    public void setDongia(double dongia) {
        this.dongia = dongia;
    }

    public String getHinhthucthanhtoan() {
        return hinhthucthanhtoan;
    }

    public void setHinhthucthanhtoan(String hinhthucthanhtoan) {
        this.hinhthucthanhtoan = hinhthucthanhtoan;
    }

    public Date getNgayhd() {
        return ngayhd;
    }

    public void setNgayhd(Date ngayhd) {
        this.ngayhd = ngayhd;
    }
    
    
    
}
