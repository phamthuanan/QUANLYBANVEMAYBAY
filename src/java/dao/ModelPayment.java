package dao;

import Connection.ConnectionDB;
import java.io.FileWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import model.Receipt;
import model.Ticket;

public class ModelPayment {

    private static Connection con = ConnectionDB.getConnection();

    public static Receipt getHD(int ma) {
        Receipt user = new Receipt();
        String sql = "select * from hoadon where mahd = " + ma;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user.setMahd(rs.getInt("mahd"));
                user.setMakh(rs.getInt("makh"));
                user.setSlVe(rs.getInt("soluongve"));
                user.setDonGia(rs.getDouble("dongia"));
                user.setHttt(rs.getString("hinhthucthanhtoan"));
                user.setNgayhd(rs.getDate("ngayhd"));
                user.setVe(getTickets(rs.getInt("mahd")));
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Lỗi lấy danh sách hóa đơn!");
            e.printStackTrace();
        }
        return user;
    }

    public static List<Receipt> getReceipts() {
        List<Receipt> list = new ArrayList<>();
        Receipt user = null;
        String sql = "select * from hoadon";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new Receipt();
                user.setMahd(rs.getInt("mahd"));
                user.setMakh(rs.getInt("makh"));
                user.setSlVe(rs.getInt("soluongve"));
                user.setDonGia(rs.getDouble("dongia"));
                user.setHttt(rs.getString("hinhthucthanhtoan"));
                user.setNgayhd(rs.getDate("ngayhd"));
                user.setVe(getTickets(rs.getInt("mahd")));
                list.add(user);
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Lỗi lấy danh sách hóa đơn!");
            e.printStackTrace();
        }
        return list;
    }

    public static List<Ticket> getTickets(int ma) {
        List<Ticket> list = new ArrayList<>();
        Ticket user = null;
        String sql = "select * from Ticket where mahd = " + ma;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new Ticket();
                user.setMahd(rs.getInt("mahd"));
                user.setMave(rs.getInt("mave"));
                user.setMacb(rs.getInt("macb"));
                user.setMaghe(rs.getInt("maghe"));
                user.setGiave(rs.getDouble("giave"));
                list.add(user);
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Lỗi lấy danh sách vé!");
            e.printStackTrace();
        }
        return list;
    }

    public static int insertReceipt(Receipt user) {
        int mahd = 0;
        String sql = "insert into hoadon values(null,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, user.getMakh());
            ps.setInt(2, user.getSlVe());
            ps.setDouble(3, user.getDonGia());
            ps.setString(4, user.getHttt());
            ps.setDate(5, user.getNgayhd());
            ps.execute();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                mahd = rs.getInt(1);	//Gia tri cua mahd moi duoc tu dong tao
            }
            ps.close();

            //Them Ve
            if (mahd != 0) {
                for (int i = 0; i < user.getVe().size(); ++i) {
                    Ticket ct = new Ticket();
                    ct.setMahd(rs.getInt("mahd"));
                    ct.setMave(rs.getInt("mave"));
                    ct.setMacb(rs.getInt("macb"));
                    ct.setMaghe(rs.getInt("maghe"));
                    ct.setGiave(rs.getDouble("giave"));

                    insertTicket(ct);
                }
            } else {
                System.out.println("Lỗi thêm hóa đơn!");
            }
        } catch (Exception e) {
            System.out.println("Lỗi thêm hóa đơn và vé!");
            e.printStackTrace();
        }
        return mahd;
    }

    public static int insertTicket(Ticket c) {
        int row = 0;
        String sql = "insert into ve values(?,?,?,?,?)";
        try {
            PreparedStatement psi = con.prepareStatement(sql);
            psi.setInt(1, c.getMave());
            psi.setInt(2, c.getMahd());
            psi.setInt(3, c.getMacb());
            psi.setInt(4, c.getMaghe());
            psi.setDouble(5, c.getGiave());
            row = psi.executeUpdate();
            psi.close();
            /*
            if (row != 0) {
                System.out.println("Them Ticket thanh cong !");
            }
             */
        } catch (Exception e) {
            System.out.println("Lỗi thêm vé!");
            e.printStackTrace();
        }
        return row;
    }

    public static void xuatHD(int mahd) {
        try {
            // Đường dẫn đến nơi muốn xuất file + tên file.txt
            FileWriter fw = new FileWriter("C:\\Users\\LENOVO\\Desktop\\TestXuatHD.txt");

            Receipt h = getHD(mahd);
            fw.write("Welcome to My Website! \r\n");
            SimpleDateFormat fm = new SimpleDateFormat("dd-MM-yyyy");
            fw.write("Ngày: " + fm.format(h.getNgayhd()) + "\r\n");
            fw.write("Khách Hàng: " + CustomerDao.getTenKH(h.getMakh()) + "\r\n");
            fw.write("Mã Vé \tMã CB \tMã Ghế \tGiá Vé \r\n");
            fw.write("Tên Sách \t\tSố Lượng \tThành Tiền \r\n");
            for (int i = 0; i < h.getVe().size(); i++) {
                fw.write(h.getVe().get(i).getMave() + "\t");
                fw.write(h.getVe().get(i).getMacb() + "\t");
                fw.write(h.getVe().get(i).getMaghe() + "\t");
                fw.write(h.getVe().get(i).getGiave() + "VNĐ \t");
            }
            fw.write("\r\nTổng cộng: \t" + h.getDonGia() + "VNĐ \t");
            fw.close();
        } catch (Exception e) {
            System.out.println("Lỗi xuất hd" + e);
        }
        System.out.println("Success...");
    }
}
