
package Model;

import java.util.Date;


public class iSach extends Sach{
    private String linkDown;
    private String mucLuc;

    public iSach() {
    }

    public iSach(String linkDown, String mucLuc, Bientap bientap, Tacgia tacgia, Theloaisach theloaisach, String ten, String anhBia, String tomTat, Date ngayTao, Date ngayCapNhat) {
        super(bientap, tacgia, theloaisach, ten, anhBia, tomTat, ngayTao, ngayCapNhat);
        this.linkDown = linkDown;
        this.mucLuc = mucLuc;
    }

    public iSach(String linkDown, String mucLuc, Integer id, Bientap bientap, Tacgia tacgia, Theloaisach theloaisach, String ten, String anhBia, String tomTat, Date ngayTao, Date ngayCapNhat) {
        super(id, bientap, tacgia, theloaisach, ten, anhBia, tomTat, ngayTao, ngayCapNhat);
        this.linkDown = linkDown;
        this.mucLuc = mucLuc;
    }
    

    public String getLinkDown() {
        return linkDown;
    }

    public void setLinkDown(String linkDown) {
        this.linkDown = linkDown;
    }

    public String getMucLuc() {
        return mucLuc;
    }

    public void setMucLuc(String mucLuc) {
        this.mucLuc = mucLuc;
    }
    
    
}
