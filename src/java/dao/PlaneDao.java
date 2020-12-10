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
import model.Plane;
import util.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class PlaneDao {
     public ArrayList<Plane> getListPlane() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM maybay";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Plane> list = new ArrayList<>();
        while (rs.next()) {
            Plane plane = new Plane();
            plane.setMamb(rs.getInt("mamb"));
            plane.setTenmb(rs.getString("tenmb"));
            plane.setHangmb(rs.getString("hangmb"));
            plane.setSoghe(rs.getInt("soghe"));
            plane.setSoghetrong(rs.getInt("soghetrong"));
            plane.setTinhtrang(rs.getInt("tinhtrang"));
      
            list.add(plane);
        }
        return list;
    }
    
    
        public ArrayList<Plane> getListPlane(String tenmb) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM maybay WHERE tenmb LIKE  '%"+tenmb+"%'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Plane> list = new ArrayList<>();
        while (rs.next()) {
             Plane plane = new Plane();
            plane.setMamb(rs.getInt("mamb"));
            plane.setTenmb(rs.getString("tenmb"));
            plane.setHangmb(rs.getString("hangmb"));
            plane.setSoghe(rs.getInt("soghe"));
            plane.setSoghetrong(rs.getInt("soghetrong"));
            plane.setTinhtrang(rs.getInt("tinhtrang"));
            
            list.add(plane);
        }
        return list;
    }
        
      public Plane getListPlane(int mamb) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM maybay WHERE mamb = '" + mamb + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Plane plane = new Plane();
        while (rs.next()) {
          
            plane.setMamb(rs.getInt("mamb"));
            plane.setTenmb(rs.getString("tenmb"));
            plane.setHangmb(rs.getString("hangmb"));
            plane.setSoghe(rs.getInt("soghe"));
            plane.setSoghetrong(rs.getInt("soghetrong"));
            plane.setTinhtrang(rs.getInt("tinhtrang"));
            
           
        }
        return plane;
    }
        
       //Thêm 1 máy bay
       public boolean insertPlane(Plane c) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO maybay VALUES(?,?,?,?,?,?)";
        try {
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setInt(1, c.getMamb());
         ps.setString(2, c.getTenmb());
         ps.setString(3, c.getHangmb());
         ps.setInt(4, c.getSoghe());
         ps.setInt(5, c.getSoghetrong());
         ps.setInt(6, c.getTinhtrang());
        
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(PlaneDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       //update
       public boolean updatePlane(Plane c) {
        
        Connection connection = DBConnect.getConnection();
       
        String sql = "UPDATE maybay SET mamb=?, tenmb=?, hangmb=?, soghe=?, soghetrong=?, tinhtrang=? WHERE mamb = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            
            ps.setInt(1, c.getMamb());
            ps.setString(2, c.getTenmb());
            ps.setString(3, c.getHangmb());
            ps.setInt(4, c.getSoghe());
            ps.setInt(5, c.getSoghetrong());
            ps.setInt(6, c.getTinhtrang());
            ps.setInt(7, c.getMamb());
         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(PlaneDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       
        // xóa máy bay
    public boolean deletePlane(int mamb) {
        Connection connection = DBConnect.getConnection();
        String sql = "DELETE FROM maybay WHERE mamb = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, mamb);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(PlaneDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
