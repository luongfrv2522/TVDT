package Model;
// Generated Nov 13, 2017 2:08:37 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;


public class Nguoidoc extends Model.Person implements java.io.Serializable {

     private String trangDaiDien;
     private Set isachnois = new HashSet(0);

    public Nguoidoc() {
    }

    
    public Nguoidoc(String ten, Date ngaySinh, boolean gioiTinh, long sdt, String trangDaiDien) {
        super(ten, ngaySinh, gioiTinh, sdt);
        this.trangDaiDien = trangDaiDien;
    }
    
    public Nguoidoc(int id, String ten, Date ngaySinh, boolean gioiTinh, long sdt, String trangDaiDien, Set isachnois) {
       super(id, ten, ngaySinh, gioiTinh, sdt);
       this.trangDaiDien = trangDaiDien;
       this.isachnois = isachnois;
    }
   
    public String getTrangDaiDien() {
        return this.trangDaiDien;
    }
    
    public void setTrangDaiDien(String trangDaiDien) {
        this.trangDaiDien = trangDaiDien;
    }
    public Set getIsachnois() {
        return this.isachnois;
    }
    
    public void setIsachnois(Set isachnois) {
        this.isachnois = isachnois;
    }



}


