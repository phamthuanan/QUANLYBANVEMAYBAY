/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

//import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.*;

/**
 *
 * @author TRAN TIEN ANH
 */
public class DBConnect {
     public static Connection getConnection() {
        Connection cons = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanvemaybay?useUnicode=yes&characterEncoding=UTF-8", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Can't connect to database !");
        }
        return cons;
    }
 
    public static void main(String[] args) {
        System.out.println(getConnection());
    }

}
