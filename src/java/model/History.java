package model;

import java.sql.Date;

public class History {
    private int macb;
    private String tensb;
    private String hangmb;
    private String diemdi;
    private String diemden;
    private Date thoigiandi;
    private Date thoigianden;
    private double giave;

    public int getMacb() {
        return macb;
    }

    public void setMacb(int macb) {
        this.macb = macb;
    }

    public String getTensb() {
        return tensb;
    }

    public void setTensb(String tensb) {
        this.tensb = tensb;
    }

    public String getHangmb() {
        return hangmb;
    }

    public void setHangmb(String hangmb) {
        this.hangmb = hangmb;
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

    public double getGiave() {
        return giave;
    }

    public void setGiave(double giave) {
        this.giave = giave;
    }
    
}
