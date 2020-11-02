package Model;

import Connection.ConnectionDB;
import Table.KhachHang;
import Table.TaiKhoan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ModelTaiKhoan {

    private static Connection con = ConnectionDB.getConnection();

    public static List<TaiKhoan> getTaiKhoans() {
        List<TaiKhoan> list = new ArrayList<>();
        String sql = "select * from taikhoan";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaiKhoan user = new TaiKhoan();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setQuyen(rs.getBoolean("quyen"));
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
        List<TaiKhoan> list = getTaiKhoans();
        for (TaiKhoan user : list) {
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

        TaiKhoan user = new TaiKhoan(username, password, false);
        KhachHang kh = new KhachHang(0, hoTen, email, diaChi, sdt, "đồng", 0, user);
        int rowUser = 0;
        int rowKH = 0;
        String sql1 = "insert into taikhoan values(?,?,?)";
        String sql2 = "insert into khachhang values(null,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ps1.setString(1, user.getUsername());
            ps1.setString(2, user.getPassword());
            ps1.setBoolean(3, user.isQuyen());
            rowUser = ps1.executeUpdate();
            ps1.close();

            PreparedStatement ps2 = con.prepareStatement(sql2);
            ps2.setString(1, kh.getHoTen());
            ps2.setString(2, kh.getEmail());
            ps2.setString(3, kh.getDiaChi());
            ps2.setString(4, kh.getSdt());
            ps2.setString(5, kh.getLoaiKH());
            ps2.setInt(6, kh.getDiem());
            ps2.setString(7, kh.getUser().getUsername());
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
}
