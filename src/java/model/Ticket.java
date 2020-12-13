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
public class Ticket {

    private int mave;
    private int mahd;
    private int macb;
    private int maghe;
    private double giave;

    public Ticket() {
    }

    public Ticket(int mave, int mahd, int macb, int maghe, double giave) {
        this.mave = mave;
        this.mahd = mahd;
        this.macb = macb;
        this.maghe = maghe;
        this.giave = giave;
    }

    public int getMave() {
        return mave;
    }

    public void setMave(int mave) {
        this.mave = mave;
    }

    public int getMahd() {
        return mahd;
    }

    public void setMahd(int mahd) {
        this.mahd = mahd;
    }

    public int getMacb() {
        return macb;
    }

    public void setMacb(int macb) {
        this.macb = macb;
    }

    public int getMaghe() {
        return maghe;
    }

    public void setMaghe(int maghe) {
        this.maghe = maghe;
    }

    public double getGiave() {
        return giave;
    }

    public void setGiave(double giave) {
        this.giave = giave;
    }

}
