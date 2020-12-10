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
import model.Account;
import model.Customer;
import util.DBConnect;

/**
 *
 * @author TRAN TIEN ANH
 */
public class AccountDao {
    public Account login(String email, String password){
        Connection conn = DBConnect.getConnection();
        String sql = "select * from taikhoan where username='"+ email +"' and password='"+password+"'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement)conn.prepareStatement(sql); // lưu trữ câu lênh sql
            ResultSet rs = ps.executeQuery(); // thực thi câu lệnh sql
            if(rs.next()){
                Account ad = new Account();
                ad.setUsername(rs.getString("username"));
                ad.setPassword(rs.getString("password"));
                ad.setQuyen(rs.getInt("quyen"));
                conn.close();
                return ad;
            }
            
        }
        catch(SQLException e){
            
        }
        return null;
    }
    
    public ArrayList<Account> search(String name)throws SQLException{
            Connection conn = DBConnect.getConnection();
            String sql = "select * from taikhoan where username='"+ name +"'";
            PreparedStatement ps = (PreparedStatement)conn.prepareStatement(sql); // lưu trữ câu lênh sql
            ResultSet rs = ps.executeQuery(); // thực thi câu lệnh sql
            ArrayList<Account> list = new ArrayList<>();
            while (rs.next()) {
            Account account = new Account();
            account.setUsername(rs.getString("username"));
            account.setPassword(rs.getString("password"));
            account.setQuyen(rs.getInt("quyen"));
            
            list.add(account);
        }
        return list;
        }
}
