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
import model.Flight;
import model.Flight;
import util.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class FlightDao {
     public ArrayList<Flight> getListFlight() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM chuyenbay";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Flight> list = new ArrayList<>();
        while (rs.next()) {
            Flight flight = new Flight();
            flight.setMacb(rs.getInt("macb"));
            flight.setMamb(rs.getInt("mamb"));
            flight.setMasb(rs.getInt("masb"));
            flight.setDiemdi(rs.getString("diemdi"));
            flight.setDiemden(rs.getString("diemden"));
            flight.setThoigiandi(rs.getDate("thoigiandi"));
            flight.setThoigianden(rs.getDate("thoigianden"));
            flight.setKhoangthoigian(rs.getDouble("khoangthoigian"));
            flight.setGia(rs.getDouble("gia"));
            flight.setMakm(rs.getInt("makm"));
            list.add(flight);
        }
        return list;
    }
    
    
        public ArrayList<Flight> getListFlight(String noidi) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM chuyenbay WHERE diemdi LIKE  '%"+noidi+"%' or diemden LIKE  '%"+noidi+"%'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Flight> list = new ArrayList<>();
        while (rs.next()) {
            Flight flight = new Flight();
            flight.setMacb(rs.getInt("macb"));
            flight.setMamb(rs.getInt("mamb"));
            flight.setMasb(rs.getInt("masb"));
            flight.setDiemdi(rs.getString("diemdi"));
            flight.setDiemden(rs.getString("diemden"));
            flight.setThoigiandi(rs.getDate("thoigiandi"));
            flight.setThoigianden(rs.getDate("thoigianden"));
            flight.setKhoangthoigian(rs.getDouble("khoangthoigian"));
            flight.setGia(rs.getDouble("gia"));
            flight.setMakm(rs.getInt("makm"));
            list.add(flight);
        }
        return list;
    }
        
        public Flight getListFlight(int macb) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM chuyenbay WHERE macb = '" + macb + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Flight flight = new Flight();
        while (rs.next()) {
            
            flight.setMacb(rs.getInt("macb"));
            flight.setMamb(rs.getInt("mamb"));
            flight.setMasb(rs.getInt("masb"));
            flight.setDiemdi(rs.getString("diemdi"));
            flight.setDiemden(rs.getString("diemden"));
            flight.setThoigiandi(rs.getDate("thoigiandi"));
            flight.setThoigianden(rs.getDate("thoigianden"));
            flight.setKhoangthoigian(rs.getDouble("khoangthoigian"));
            flight.setGia(rs.getDouble("gia"));
            flight.setMakm(rs.getInt("makm"));
            
        }
        return flight;
    }
        
        public ArrayList<Flight> getListPlaceTo(String diemden) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM chuyenbay WHERE diemden = '" + diemden + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Flight> list = new ArrayList<>();
        while (rs.next()) {
            Flight flight = new Flight();
            flight.setMacb(rs.getInt("macb"));
            flight.setMamb(rs.getInt("mamb"));
            flight.setMasb(rs.getInt("masb"));
            flight.setDiemdi(rs.getString("diemdi"));
            flight.setDiemden(rs.getString("diemden"));
            flight.setThoigiandi(rs.getDate("thoigiandi"));
            flight.setThoigianden(rs.getDate("thoigianden"));
            flight.setKhoangthoigian(rs.getDouble("khoangthoigian"));
            flight.setGia(rs.getDouble("gia"));
            flight.setMakm(rs.getInt("makm"));
            list.add(flight);
        }
        return list;
    }
        
        public boolean insertFlight(Flight c) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO chuyenbay VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setInt(1, c.getMacb());
         ps.setInt(2, c.getMamb());
         ps.setInt(3, c.getMasb());
         ps.setString(4, c.getDiemdi());
         ps.setString(5, c.getDiemden());
         ps.setDate(6,(java.sql.Date) c.getThoigiandi());
         ps.setDate(7, (java.sql.Date) c.getThoigianden());
         ps.setDouble(8, c.getKhoangthoigian());
         ps.setDouble(9, c.getGia());
         ps.setInt(10, c.getMakm());

        
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       //update
       public boolean updateFlight(Flight c) {
        
        Connection connection = DBConnect.getConnection();
       
        String sql = "UPDATE chuyenbay SET macb=?, mamb=?, masb=?, diemdi=?, diemden=?, thoigiandi=?, thoigianden=?, khoangthoigian=?, gia=?, makm=? WHERE macb = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, c.getMacb());
            ps.setInt(2, c.getMamb());
            ps.setInt(3, c.getMasb());
            ps.setString(4, c.getDiemdi());
            ps.setString(5, c.getDiemden());
            ps.setDate(6,(java.sql.Date) c.getThoigiandi());
            ps.setDate(7,(java.sql.Date) c.getThoigianden());
            ps.setDouble(8, c.getKhoangthoigian());
            ps.setDouble(9, c.getGia());
            ps.setInt(10, c.getMakm());
            ps.setInt(11, c.getMacb());

         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       
        // xóa 
    public boolean deleteFlight(int macb) {
        Connection connection = DBConnect.getConnection();
        String sql = "DELETE FROM chuyenbay WHERE macb = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, macb);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
