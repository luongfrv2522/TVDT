package Model;
// Generated Nov 13, 2017 2:08:37 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;


public class Bientap extends Model.Person implements java.io.Serializable {


     private boolean nhanVienChinhThuc;
     private Set sachtruyenthongs = new HashSet(0);
     private Set isachnois = new HashSet(0);
     private Set isachchus = new HashSet(0);

    public Bientap() {
    }

	
    public Bientap(String ten, Date ngaySinh, boolean gioiTinh, long sdt, boolean nhanVienChinhThuc) {
        super( ten, ngaySinh, gioiTinh, sdt);
        this.nhanVienChinhThuc = nhanVienChinhThuc;
    }

    public Bientap(boolean nhanVienChinhThuc, Integer id, String ten, Date ngaySinh, boolean gioiTinh, long sdt) {
        super(id, ten, ngaySinh, gioiTinh, sdt);
        this.nhanVienChinhThuc = nhanVienChinhThuc;
    }
    
    public Bientap(String ten, Date ngaySinh, boolean gioiTinh, long sdt, boolean nhanVienChinhThuc, Set sachtruyenthongs, Set isachnois, Set isachchus) {
       super(ten, ngaySinh, gioiTinh, sdt);
       this.nhanVienChinhThuc = nhanVienChinhThuc;
       this.sachtruyenthongs = sachtruyenthongs;
       this.isachnois = isachnois;
       this.isachchus = isachchus;
    }
   

    public boolean isNhanVienChinhThuc() {
        return this.nhanVienChinhThuc;
    }
     
    public void setNhanVienChinhThuc(boolean nhanVienChinhThuc) {
        this.nhanVienChinhThuc = nhanVienChinhThuc;
    }
    public Set getSachtruyenthongs() {
        return this.sachtruyenthongs;
    }
    
    public void setSachtruyenthongs(Set sachtruyenthongs) {
        this.sachtruyenthongs = sachtruyenthongs;
    }
    public Set getIsachnois() {
        return this.isachnois;
    }
    
    public void setIsachnois(Set isachnois) {
        this.isachnois = isachnois;
    }
    public Set getIsachchus() {
        return this.isachchus;
    }
    
    public void setIsachchus(Set isachchus) {
        this.isachchus = isachchus;
    }




}


