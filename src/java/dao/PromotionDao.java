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
import model.Promotion;
import Connection.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class PromotionDao {

     public ArrayList<Promotion> getListPromotion() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM khuyenmai";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Promotion> list = new ArrayList<>();
        while (rs.next()) {
            Promotion promotion = new Promotion();
            promotion.setMakm(rs.getInt("makm"));
            promotion.setTenkm(rs.getString("tenkm"));
            promotion.setPhantramkm(rs.getInt("phantramkm"));
            promotion.setNgaybd(rs.getDate("ngaybd"));
            promotion.setNgaykt(rs.getDate("ngaykt"));
      
            list.add(promotion);
        }
        return list;
    }
    
    
        public ArrayList<Promotion> getListPromotion(String tenkm) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM khuyenmai WHERE tenkm = '" + tenkm + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Promotion> list = new ArrayList<>();
        while (rs.next()) {
            Promotion promotion = new Promotion();
            
            promotion.setMakm(rs.getInt("makm"));
            promotion.setTenkm(rs.getString("tenkm"));
            promotion.setPhantramkm(rs.getInt("phantramkm"));
            promotion.setNgaybd(rs.getDate("ngaybd"));
            promotion.setNgaykt(rs.getDate("ngaykt"));
            
            list.add(promotion);
        }
        return list;
    }
        
     
       public boolean insertPromotion(Promotion c) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO khuyenmai VALUES(?,?,?,?,?)";
        try {
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setInt(1, c.getMakm());
         ps.setString(2, c.getTenkm());
         ps.setInt(3, c.getPhantramkm());
         ps.setDate(4, (java.sql.Date) c.getNgaybd());
         ps.setDate(5, (java.sql.Date) c.getNgaykt());

        
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(PromotionDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       //update
       public boolean updatePromotion(Promotion c) {
        
        Connection connection = DBConnect.getConnection();
       
        String sql = "UPDATE khuyenmai SET makm=?, tenkm=?, phantramkm=?, ngaybd=?, ngaykt=? WHERE makm = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            
            ps.setInt(1, c.getMakm());
            ps.setString(2, c.getTenkm());
            ps.setInt(3, c.getPhantramkm());
            ps.setDate(4, (java.sql.Date) c.getNgaybd());
            ps.setDate(5, (java.sql.Date) c.getNgaykt());
            ps.setInt(1, c.getMakm());
         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(PromotionDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
       
        // xóa 
    public boolean deletePromotion(int makm) {
        Connection connection = DBConnect.getConnection();
        String sql = "DELETE FROM khuyenmai WHERE makm = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, makm);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(PromotionDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
