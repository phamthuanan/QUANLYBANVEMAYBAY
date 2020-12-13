package dao;

import Connection.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Customer;
import model.History;

public class ModelAccount {

    private static Connection con = ConnectionDB.getConnection();

    public static List<Account> getAccounts() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from taikhoan";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account user = new Account();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setQuyen(rs.getInt("quyen"));
                list.add(user);
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Loi lay danh sach tai khoan!");
            e.printStackTrace();
        }
        return list;
    }

    public static boolean doesUsernameExist(String username) {
        List<Account> list = getAccounts();
        for (Account user : list) {
            if (user.getUsername() == username) {
                return true;
            }
        }
        return false;
    }

    public static boolean signUp(String username, String password, String hoTen, String email, String diaChi, String sdt) {
        if (doesUsernameExist(username) == true) {
            return false;
        }

        Account user = new Account(username, password, 0);
        Customer kh = new Customer(0, hoTen, email, diaChi, sdt, "đồng", username, 0);
        int rowUser = 0;
        int rowKH = 0;
        String sql1 = "insert into taikhoan values(?,?,?)";
        String sql2 = "insert into khachhang values(null,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ps1.setString(1, user.getUsername());
            ps1.setString(2, user.getPassword());
            ps1.setInt(3, user.getQuyen());
            rowUser = ps1.executeUpdate();
            ps1.close();

            PreparedStatement ps2 = con.prepareStatement(sql2);
            ps2.setString(1, kh.getHoten());
            ps2.setString(2, kh.getEmail());
            ps2.setString(3, kh.getDiachi());
            ps2.setString(4, kh.getSdt());
            ps2.setString(5, kh.getLoaikh());
            ps2.setInt(6, kh.getDiem());
            ps2.setString(7, kh.getUsername());
            rowKH = ps2.executeUpdate();
            ps2.close();
        } catch (Exception e) {
            System.out.println("Lỗi đăng ký tài khoản!");
            e.printStackTrace();
        }
        if (rowUser > 0 && rowKH > 0) {
            return true;
        }
        return false;
    }

    public static int signIn(String username, String password) {
        // return 0: Dang nhap that bai - sai username or password
        // return 1: Admin
        // return 2: Khach hang

        String sql = "SELECT * FROM taikhoan WHERE username LIKE ? AND password LIKE ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                if (rs.getString("username") != username || rs.getString("password") != password) {
                    return 0;
                }
                if (rs.getBoolean("quyen")) {
                    return 1;
                }
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Loi lay thong tin tai khoan trong dang nhap!");
            e.printStackTrace();
        }
        return 2;
    }

    public static boolean checkPassword(String username, String pass) {
        List<Account> list = getAccounts();
        for (Account user : list) {
            if (user.getUsername() == username) {
                if (user.getPassword() == pass) {
                    return true;
                }
                break;
            }
        }
        return false;
    }

    // Quên mật khẩu
    public static boolean forgetPassword(String username, String oldPass, String newPass) {
        if (!checkPassword(username, oldPass)) {
            return false;
        }

        int row = 0;
        String sql = "update taikhoan set password = ? where username = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, newPass);
            ps.setString(2, username);
            row = ps.executeUpdate();
            ps.close();
        } catch (Exception ex) {
            System.out.println("Lỗi update sách!");
            ex.printStackTrace();
        }
        return row == 1;
    }

    // Xem lịch sử
    public static List<History> getHistories(String username) {
        List<History> list = new ArrayList<>();
        History cb = null;
        String sql = "select macb, tensb, hangmb, diemdi, diemden, thoigiandi, thoigianden, giave from taikhoan tk, khachhang kh, hoadon hd, ve, chuyenbay cb, sanbay sb, maybay mb where tk.username=kh.username and kh.makh=hd.makh and hd.mahd=ve.mahd and ve.macb=cb.macb and cb.masb=sb.masb and cb.mamb=mb.mamb and tk.username=" + username;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cb = new History();
                cb.setMacb(rs.getInt("macb"));
                cb.setTensb(rs.getString("tensb"));
                cb.setHangmb(rs.getString("hangmb"));
                cb.setDiemdi(rs.getString("diemdi"));
                cb.setDiemden(rs.getString("diemden"));
                cb.setThoigiandi(rs.getDate("thoigiandi"));
                cb.setThoigianden(rs.getDate("thoigianden"));
                cb.setGiave(rs.getDouble("giave"));

                list.add(cb);
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Loi lay lich su tai khoan!");
            e.printStackTrace();
        }
        return list;
    }
}
