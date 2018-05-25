package Model;
// Generated Nov 13, 2017 2:08:37 PM by Hibernate Tools 4.3.1


import java.util.Date;


public class Admin extends Model.Person  implements java.io.Serializable {

     private String userName;
     private String passWowd;

    public Admin() {
    }

    public Admin(String userName, String passWowd, long sdt, String ten, Date ngaySinh, boolean gioiTinh) {
       super(ten, ngaySinh, gioiTinh, sdt);
       this.userName = userName;
       this.passWowd = passWowd;
    }

    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassWowd() {
        return this.passWowd;
    }
    
    public void setPassWowd(String passWowd) {
        this.passWowd = passWowd;
    }
    

}


