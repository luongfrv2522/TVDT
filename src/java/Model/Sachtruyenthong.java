package Model;
// Generated Nov 13, 2017 2:08:37 PM by Hibernate Tools 4.3.1


import java.util.Date;


public class Sachtruyenthong extends Model.Sach implements java.io.Serializable {

     private int trangThai;
     private Date ngayXuatBan;


    public Sachtruyenthong() {
    }

    public Sachtruyenthong(Bientap bientap, Tacgia tacgia, Theloaisach theloaisach, String ten, String anhBia, String tomTat, int trangThai, Date ngayXuatBan, Date ngayTao, Date ngayCapNhat) {
       super(bientap, tacgia, theloaisach, ten, anhBia, tomTat, ngayTao, ngayCapNhat);
       this.trangThai = trangThai;
       this.ngayXuatBan = ngayXuatBan;

    }
  
    public int getTrangThai() {
        return this.trangThai;
    }
    
    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }
    public Date getNgayXuatBan() {
        return this.ngayXuatBan;
    }
    
    public void setNgayXuatBan(Date ngayXuatBan) {
        this.ngayXuatBan = ngayXuatBan;
    }

}


