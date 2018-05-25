
package Model;

import java.util.Date;


public class Sach {
    private Integer id;
     private Bientap bientap;
     private Tacgia tacgia;
     private Theloaisach theloaisach;
     private String ten;
     private String anhBia;
     private String tomTat;
     private Date ngayTao;
     private Date ngayCapNhat;
     public int LoaiSach;
    public Sach() {
    }

    public Sach(Bientap bientap, Tacgia tacgia, Theloaisach theloaisach, String ten, String anhBia, String tomTat, Date ngayTao, Date ngayCapNhat) {
        this.bientap = bientap;
        this.tacgia = tacgia;
        this.theloaisach = theloaisach;
        this.ten = ten;
        this.anhBia = anhBia;
        this.tomTat = tomTat;
        this.ngayTao = ngayTao;
        this.ngayCapNhat = ngayCapNhat;
    }

    public Sach(Integer id, Bientap bientap, Tacgia tacgia, Theloaisach theloaisach, String ten, String anhBia, String tomTat, Date ngayTao, Date ngayCapNhat) {
        this.id = id;
        this.bientap = bientap;
        this.tacgia = tacgia;
        this.theloaisach = theloaisach;
        this.ten = ten;
        this.anhBia = anhBia;
        this.tomTat = tomTat;
        this.ngayTao = ngayTao;
        this.ngayCapNhat = ngayCapNhat;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Bientap getBientap() {
        return bientap;
    }

    public void setBientap(Bientap bientap) {
        this.bientap = bientap;
    }

    public Tacgia getTacgia() {
        return tacgia;
    }

    public void setTacgia(Tacgia tacgia) {
        this.tacgia = tacgia;
    }

    public Theloaisach getTheloaisach() {
        return theloaisach;
    }

    public void setTheloaisach(Theloaisach theloaisach) {
        this.theloaisach = theloaisach;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getAnhBia() {
        return anhBia;
    }

    public void setAnhBia(String anhBia) {
        this.anhBia = anhBia;
    }

    public String getTomTat() {
        return tomTat;
    }

    public void setTomTat(String tomTat) {
        this.tomTat = tomTat;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public Date getNgayCapNhat() {
        return ngayCapNhat;
    }

    public void setNgayCapNhat(Date ngayCapNhat) {
        this.ngayCapNhat = ngayCapNhat;
    }
    
    
}
