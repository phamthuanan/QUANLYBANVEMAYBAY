package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Receipt {

    private int mahd;
    private int makh;
    private int slVe;
    private double donGia;
    private String httt;
    private Date ngayhd;
    private List<Ticket> ve;

    public Receipt() {
        mahd = 0;
        ngayhd = null;
        makh = 0;
        slVe = 0;
        donGia = 0;
        ve = new ArrayList<Ticket>();
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

    public int getSlVe() {
        return slVe;
    }

    public void setSlVe(int slVe) {
        this.slVe = slVe;
    }

    public double getDonGia() {
        return donGia;
    }

    public void setDonGia(double donGia) {
        this.donGia = donGia;
    }

    public String getHttt() {
        return httt;
    }

    public void setHttt(String httt) {
        this.httt = httt;
    }

    public Date getNgayhd() {
        return ngayhd;
    }

    public void setNgayhd(Date ngayhd) {
        this.ngayhd = ngayhd;
    }

    public List<Ticket> getVe() {
        return ve;
    }

    public void setVe(List<Ticket> ve) {
        this.ve = ve;
    }
}
