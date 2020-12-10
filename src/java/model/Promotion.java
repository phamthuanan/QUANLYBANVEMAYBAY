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
public class Promotion {
    private int makm;
    private String tenkm;
    private int phantramkm;
    private Date ngaybd;
    private Date ngaykt;

    public Promotion() {
    }

    public Promotion(int makm, String tenkm, int phantramkm, Date ngaybd, Date ngaykt) {
        this.makm = makm;
        this.tenkm = tenkm;
        this.phantramkm = phantramkm;
        this.ngaybd = ngaybd;
        this.ngaykt = ngaykt;
    }

    public int getMakm() {
        return makm;
    }

    public void setMakm(int makm) {
        this.makm = makm;
    }

    public String getTenkm() {
        return tenkm;
    }

    public void setTenkm(String tenkm) {
        this.tenkm = tenkm;
    }

    public int getPhantramkm() {
        return phantramkm;
    }

    public void setPhantramkm(int phantramkm) {
        this.phantramkm = phantramkm;
    }

    public Date getNgaybd() {
        return ngaybd;
    }

    public void setNgaybd(Date ngaybd) {
        this.ngaybd = ngaybd;
    }

    public Date getNgaykt() {
        return ngaykt;
    }

    public void setNgaykt(Date ngaykt) {
        this.ngaykt = ngaykt;
    }
    
    

}
