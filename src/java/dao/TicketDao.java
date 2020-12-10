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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Ticket;
import model.Flight;
import model.Plane;
import model.Customer;
import util.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class TicketDao {
    
      public ArrayList<Ticket> getListCustomerTicket() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM ve";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Ticket> list = new ArrayList<>();
        while (rs.next()) {
            Ticket ticket = new Ticket();
            ticket.setMave(rs.getInt("mave"));
            ticket.setMahd(rs.getInt("mahd"));
            ticket.setMacb(rs.getInt("macb"));
            ticket.setMaghe(rs.getInt("maghe"));
            ticket.setGiave(rs.getDouble("dongia"));
           
            
            list.add(ticket);
        }
        return list;
    }
    
    //lấy danh sách vé có điều kiện
        public ArrayList<String> getListTicket(String hoten, String diemdi, String diemden) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT ve.mave, kh.hoten, ve.maghe, cb.diemdi, cb.diemden, cb.thoigiandi, cb.thoigianden, mb.hangmb "
                + "   FROM ve,chuyenbay as cb,maybay as mb,khachhang as kh,hoadon as hd"
                + "   WHERE ve.mahd = hd.mahd and kh.makh = hd.makh and cb.mamb = mb.mamb and ve.macb = cb.macb and kh.hoten LIKE '%"+hoten+"%' and cb.diemdi LIKE  '%"+diemdi+"%' and cb.diemden LIKE  '%"+diemden+"%'";
               
//                + "   and kh.hoten = '"+ hoten +"' and cb.diemdi ='"+ diemdi +"' and cb.diemden ='"+diemden+"'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
         ArrayList<String> list = new ArrayList<String>();
      
        while (rs.next()) {
//            Ticket ticket = new Ticket();
//            Plane plane = new Plane();
//            Customer customer = new Customer();
//            Flight flight = new Flight();
            
          //  ticket.setMave(rs.getInt("mave"));
            list.add(Integer.toString(rs.getInt("mave")));
          //  ticket.setMaghe(rs.getInt("maghe"));
            list.add(Integer.toString(rs.getInt("maghe")));
          //  plane.setHangmb(rs.getString("hangmb"));
            list.add(rs.getString("hangmb"));
          //  customer.setHoten(rs.getString("hoten"));
            list.add(rs.getString("hoten"));
           // flight.setDiemdi(rs.getString("diemdi"));
           // flight.setDiemden(rs.getString("diemden"));
          //  flight.setThoigiandi(rs.getDate("thoigiandi"));
         //   flight.setThoigianden(rs.getDate("thoigianden"));
          DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
              list.add(rs.getString("diemdi"));
                list.add(rs.getString("diemden"));
                  list.add(dateFormat.format(rs.getDate("thoigiandi")));
                list.add(dateFormat.format(rs.getDate("thoigianden")));
//            list.add(ticket);
//            list.add(customer);
//            list.add(plane);
//            list.add(flight);
            
            
        }
        return list;
    }
        
        //lấy danh sách vé có điều kiện
        public ArrayList<String> getAllTicket() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT ve.mave, kh.hoten, ve.maghe, cb.diemdi, cb.diemden, cb.thoigiandi, cb.thoigianden, mb.hangmb "
                + "   FROM ve,chuyenbay as cb,maybay as mb,khachhang as kh,hoadon as hd"
                + "   WHERE ve.mahd = hd.mahd and kh.makh = hd.makh and cb.mamb = mb.mamb and ve.macb = cb.macb";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<String> list = new ArrayList<String>();
      
        while (rs.next()) {
//            Ticket ticket = new Ticket();
//            Plane plane = new Plane();
//            Customer customer = new Customer();
//            Flight flight = new Flight();
            
          //  ticket.setMave(rs.getInt("mave"));
            list.add(Integer.toString(rs.getInt("mave")));
          //  ticket.setMaghe(rs.getInt("maghe"));
            list.add(Integer.toString(rs.getInt("maghe")));
          //  plane.setHangmb(rs.getString("hangmb"));
            list.add(rs.getString("hangmb"));
          //  customer.setHoten(rs.getString("hoten"));
            list.add(rs.getString("hoten"));
           // flight.setDiemdi(rs.getString("diemdi"));
           // flight.setDiemden(rs.getString("diemden"));
          //  flight.setThoigiandi(rs.getDate("thoigiandi"));
         //   flight.setThoigianden(rs.getDate("thoigianden"));
          DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
              list.add(rs.getString("diemdi"));
                list.add(rs.getString("diemden"));
                  list.add(dateFormat.format(rs.getDate("thoigiandi")));
                list.add(dateFormat.format(rs.getDate("thoigianden")));
//            list.add(ticket);
//            list.add(customer);
//            list.add(plane);
//            list.add(flight);
            
            
        }
        return list;
    }
        
         //Thêm 1 máy bay
       public boolean insertTicket(Ticket c) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO ve VALUES(?,?,?,?,?,?)";

        try {
            PreparedStatement ps = connection.prepareCall(sql);
                ps.setInt(1, c.getMave());
                ps.setInt(2, c.getMahd());
                ps.setInt(3, c.getMacb());
                ps.setInt(4, c.getMaghe());
                ps.setDouble(5, c.getGiave());
            
            
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(TicketDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       //update
       public boolean updateTicket(Ticket c) {
        
        Connection connection = DBConnect.getConnection();
       
        String sql = "UPDATE ve SET mave=?, mahd=?, macb=?, maghe=?, giave=? WHERE mave = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            
                ps.setInt(1, c.getMave());
                ps.setInt(2, c.getMahd());
                ps.setInt(3, c.getMacb());
                ps.setInt(4, c.getMaghe());
                ps.setDouble(5, c.getGiave());
                ps.setInt(6, c.getMave());
         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(TicketDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       
        // xóa máy bay
    public boolean deleteTicket(int mave) {
        Connection connection = DBConnect.getConnection();
        String sql = "DELETE FROM ve WHERE mave = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, mave);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(TicketDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
