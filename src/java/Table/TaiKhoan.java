package Table;

public class TaiKhoan {

    private String username;
    private String password;
    private boolean quyen;

    public TaiKhoan() {
        username = null;
        password = null;
        quyen = false;
    }

    public TaiKhoan(String username, String password, boolean quyen) {
        this.username = username;
        this.password = password;
        this.quyen = quyen;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public boolean isQuyen() {
        return quyen;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setQuyen(boolean quyen) {
        this.quyen = quyen;
    }

}
