/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Statistical;
import Connection.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class StatisticalDao {

    public ArrayList<Statistical> getListCustomerTicket() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM hoadon";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statistical> list = new ArrayList<>();
        while (rs.next()) {
            Statistical statistical = new Statistical();
            statistical.setMahd(rs.getInt("mahd"));
            statistical.setMakh(rs.getInt("makh"));
            statistical.setSoluongve(rs.getInt("soluongve"));
            statistical.setDongia(rs.getDouble("dongia"));
            statistical.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
            statistical.setNgayhd(rs.getDate("ngayhd"));

            list.add(statistical);
        }
        return list;
    }

    public ArrayList<Statistical> getListCustomerTicketByMonth(String month, String year) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM hoadon WHERE MONTH(ngayhd) = '" + month + "' and YEAR(ngayhd) = '" + year + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statistical> list = new ArrayList<>();
        while (rs.next()) {
            Statistical statistical = new Statistical();
            statistical.setMahd(rs.getInt("mahd"));
            statistical.setMakh(rs.getInt("makh"));
            statistical.setSoluongve(rs.getInt("soluongve"));
            statistical.setDongia(rs.getDouble("dongia"));
            statistical.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
            statistical.setNgayhd(rs.getDate("ngayhd"));

            list.add(statistical);
        }
        return list;
    }

    public double getSum() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT sum(dongia*soluongve) FROM hoadon";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        double tong = 0;
        while (rs.next()) {
            tong += rs.getDouble(1);
        }

        return tong;
    }

    public double getSumByMonth(String month, String year) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT sum(dongia*soluongve) FROM hoadon WHERE MONTH(ngayhd) = '" + month + "' and YEAR(ngayhd) = '" + year + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        double tong = 0;
        while (rs.next()) {
            tong += rs.getDouble(1);
        }

        return tong;
    }

    public double getSumByCustomer() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT sum(dongia*soluongve) FROM hoadon GROUP BY makh";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        double tong = 0;
        while (rs.next()) {
            tong += rs.getDouble(1);
        }

        return tong;
    }

    //chưa
    public ArrayList getMonthlyRevenue() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM hoadon";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statistical> list = new ArrayList<>();
        while (rs.next()) {
            Statistical statistical = new Statistical();
            statistical.setMahd(rs.getInt("mahd"));
            statistical.setMakh(rs.getInt("makh"));
            statistical.setSoluongve(rs.getInt("soluongve"));
            statistical.setDongia(rs.getDouble("dongia"));
            statistical.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
            statistical.setNgayhd(rs.getDate("ngayhd"));

            list.add(statistical);
        }
        return list;
    }

    //chưa
    public ArrayList getQuarterlyRevenue() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM hoadon";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statistical> list = new ArrayList<>();
        while (rs.next()) {
            Statistical statistical = new Statistical();
            statistical.setMahd(rs.getInt("mahd"));
            statistical.setMakh(rs.getInt("makh"));
            statistical.setSoluongve(rs.getInt("soluongve"));
            statistical.setDongia(rs.getDouble("dongia"));
            statistical.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
            statistical.setNgayhd(rs.getDate("ngayhd"));

            list.add(statistical);
        }
        return list;
    }

    //chưa
    public ArrayList getYearlyRevenue() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM hoadon";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statistical> list = new ArrayList<>();
        while (rs.next()) {
            Statistical statistical = new Statistical();
            statistical.setMahd(rs.getInt("mahd"));
            statistical.setMakh(rs.getInt("makh"));
            statistical.setSoluongve(rs.getInt("soluongve"));
            statistical.setDongia(rs.getDouble("dongia"));
            statistical.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
            statistical.setNgayhd(rs.getDate("ngayhd"));

            list.add(statistical);
        }
        return list;
    }

    public ArrayList<Statistical> getListWithCustomer() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM hoadon";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statistical> list = new ArrayList<>();
        while (rs.next()) {
            Statistical statistical = new Statistical();
            statistical.setMahd(rs.getInt("mahd"));
            statistical.setMakh(rs.getInt("makh"));
            statistical.setSoluongve(rs.getInt("soluongve"));
            statistical.setDongia(rs.getDouble("dongia"));
            statistical.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
            statistical.setNgayhd(rs.getDate("ngayhd"));

            list.add(statistical);
        }
        return list;
    }
}
