package Model;
// Generated Nov 13, 2017 2:08:37 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;


public class Tacgia extends Model.Person implements java.io.Serializable {

     private String tieuSu;
     private Set isachnois = new HashSet(0);
     private Set sachtruyenthongs = new HashSet(0);
     private Set isachchus = new HashSet(0);

    public Tacgia() {
    }

	
    public Tacgia(String ten, Date ngaySinh, boolean gioiTinh, long sdt, String tieuSu) {
        super(ten, ngaySinh, gioiTinh, sdt);
        this.tieuSu = tieuSu;
    }
    public Tacgia(String ten, Date ngaySinh, boolean gioiTinh, long sdt, String tieuSu, Set isachnois, Set sachtruyenthongs, Set isachchus) {
       super(ten, ngaySinh, gioiTinh, sdt);
       this.tieuSu = tieuSu;
       this.isachnois = isachnois;
       this.sachtruyenthongs = sachtruyenthongs;
       this.isachchus = isachchus;
    }
   

    public String getTieuSu() {
        return this.tieuSu;
    }
    
    public void setTieuSu(String tieuSu) {
        this.tieuSu = tieuSu;
    }
    public Set getIsachnois() {
        return this.isachnois;
    }
    
    public void setIsachnois(Set isachnois) {
        this.isachnois = isachnois;
    }
    public Set getSachtruyenthongs() {
        return this.sachtruyenthongs;
    }
    
    public void setSachtruyenthongs(Set sachtruyenthongs) {
        this.sachtruyenthongs = sachtruyenthongs;
    }
    public Set getIsachchus() {
        return this.isachchus;
    }
    
    public void setIsachchus(Set isachchus) {
        this.isachchus = isachchus;
    }

}


