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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Customer;
import util.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class CustomerDao {
     public ArrayList<Customer> getListCustomer() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM khachhang";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Customer> list = new ArrayList<>();
        while (rs.next()) {
            Customer customer = new Customer();
            customer.setMakh(rs.getInt("makh"));
            customer.setHoten(rs.getString("hoten"));
            customer.setEmail(rs.getString("email"));
            customer.setDiachi(rs.getString("diachi"));
            customer.setSdt(rs.getString("sdt"));
            customer.setLoaikh(rs.getString("loaikh"));
            customer.setUsername(rs.getString("username"));
            customer.setDiem(rs.getInt("diem"));
            list.add(customer);
        }
        return list;
    }
     
     public ArrayList<Customer> getListCustomer(String hoten) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM khachhang WHERE hoten LIKE  '%"+hoten+"%'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Customer> list = new ArrayList<>();
        while (rs.next()) {
            Customer customer = new Customer();
            customer.setMakh(rs.getInt("makh"));
            customer.setHoten(rs.getString("hoten"));
            customer.setEmail(rs.getString("email"));
            customer.setDiachi(rs.getString("diachi"));
            customer.setSdt(rs.getString("sdt"));
            customer.setLoaikh(rs.getString("loaikh"));
            customer.setUsername(rs.getString("username"));
            customer.setDiem(rs.getInt("diem"));
            list.add(customer);
        }
        return list;
    }
     
     public Customer getListCustomer(int makh) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM khachhang WHERE makh = '" + makh + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
         Customer customer = new Customer();
        while (rs.next()) {
           
            customer.setMakh(rs.getInt("makh"));
            customer.setHoten(rs.getString("hoten"));
            customer.setEmail(rs.getString("email"));
            customer.setDiachi(rs.getString("diachi"));
            customer.setSdt(rs.getString("sdt"));
            customer.setLoaikh(rs.getString("loaikh"));
            customer.setUsername(rs.getString("username"));
            customer.setDiem(rs.getInt("diem"));
            
        }
        return customer;
    }
     
      //Thêm 1 máy bay
       public boolean insertCustomer(Customer c) {
           Account a = new Account();
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO khachhang VALUES(?,?,?,?,?,?)";
        String sql1 = "INSERT INTO taikhoan VALUES(?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
                ps.setInt(1, c.getMakh());
                ps.setString(2, c.getHoten());
                ps.setString(3, c.getEmail());
                ps.setString(4, c.getDiachi());
                ps.setString(5, c.getSdt());
                ps.setString(6, c.getLoaikh());
                ps.setString(7, c.getUsername());
                ps.setInt(8, c.getDiem());
            
            PreparedStatement ps1 = connection.prepareCall(sql1);
                ps1.setString(1, a.getUsername());
                ps1.setString(2, a.getPassword());
                ps1.setInt(3, 0);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       //update
       public boolean updateCustomer(Customer c) {
        
        Connection connection = DBConnect.getConnection();
       
        String sql = "UPDATE khachhang SET makh=?, hoten=?, email=?, diachi=?, sdt=?, loaikh=?, username=?, diem=? WHERE makh = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            
            ps.setInt(1, c.getMakh());
            ps.setString(2, c.getHoten());
            ps.setString(3, c.getEmail());
            ps.setString(4, c.getDiachi());
            ps.setString(5, c.getSdt());
            ps.setString(6, c.getLoaikh());
            ps.setString(7, c.getUsername());
            ps.setInt(8, c.getDiem());
            ps.setInt(9, c.getMakh());
         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       
        // xóa máy bay
    public boolean deleteCustomer(int makh) {
        Connection connection = DBConnect.getConnection();
        String sql = "DELETE FROM khachhang WHERE makh = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, makh);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
