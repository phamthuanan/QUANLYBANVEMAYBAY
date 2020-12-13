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
public class Customer {

    private int makh;
    private String hoten;
    private String email;
    private String diachi;
    private String sdt;
    private String loaikh;
    private String username;
    private int diem;

    public Customer() {
        makh = 0;
        hoten = null;
        email = null;
        diachi = null;
        sdt = null;
        loaikh = "đồng";
        diem = 0;
        username = null;
    }

    public Customer(int makh, String hoten, String email, String diachi, String sdt, String loaikh, String username, int diem) {
        this.makh = makh;
        this.hoten = hoten;
        this.email = email;
        this.diachi = diachi;
        this.sdt = sdt;
        this.loaikh = loaikh;
        this.username = username;
        this.diem = diem;
    }

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getLoaikh() {
        return loaikh;
    }

    public void setLoaikh(String loaikh) {
        this.loaikh = loaikh;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

}
