
package Model;

import java.util.Date;


public class Person {
    private Integer id;
    private String ten;
    private Date ngaySinh;
    private boolean gioiTinh;
    private long sdt;

    public Person() {
    }

    public Person(String ten, Date ngaySinh, boolean gioiTinh, long sdt) {
        this.ten = ten;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.sdt = sdt;
    }

    public Person(Integer id, String ten, Date ngaySinh, boolean gioiTinh, long sdt) {
        this.id = id;
        this.ten = ten;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.sdt = sdt;
    }

    public String getTen() {
        return ten;
    }
    public void setTen(String ten) {
        this.ten = ten;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }
    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public boolean isGioiTinh() {
        return gioiTinh;
    }
    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public long getSdt() {
        return sdt;
    }
    public void setSdt(long sdt) {
        this.sdt = sdt;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    
    
    
}
