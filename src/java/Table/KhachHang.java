package Table;

public class KhachHang {

    private int maKH;
    private String hoTen;
    private String email;
    private String diaChi;
    private String sdt;
    private String loaiKH;
    private int diem;
    private TaiKhoan user;

    public KhachHang() {
        maKH = 0;
        hoTen = null;
        email = null;
        diaChi = null;
        sdt = null;
        loaiKH = "đồng";
        diem = 0;
        user = new TaiKhoan();
    }

    public KhachHang(int maKH, String hoTen, String email, String diaChi, String sdt, String loaiKH, int diem, TaiKhoan user) {
        this.maKH = maKH;
        this.hoTen = hoTen;
        this.email = email;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.loaiKH = loaiKH;
        this.diem = diem;
        this.user = user;
    }

    public int getMaKH() {
        return maKH;
    }

    public String getHoTen() {
        return hoTen;
    }

    public String getEmail() {
        return email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public String getLoaiKH() {
        return loaiKH;
    }

    public int getDiem() {
        return diem;
    }

    public TaiKhoan getUser() {
        return user;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public void setLoaiKH(String loaiKH) {
        this.loaiKH = loaiKH;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

    public void setUser(TaiKhoan user) {
        this.user = user;
    }

}
