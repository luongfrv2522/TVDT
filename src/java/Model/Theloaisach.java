package Model;
// Generated Nov 13, 2017 2:08:37 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Theloaisach generated by hbm2java
 */
public class Theloaisach  implements java.io.Serializable {


     private Integer id;
     private String ten;
     private Set sachtruyenthongs = new HashSet(0);
     private Set isachchus = new HashSet(0);
     private Set isachnois = new HashSet(0);

    public Theloaisach() {
    }

	
    public Theloaisach(String ten) {
        this.ten = ten;
    }
    public Theloaisach(String ten, Set sachtruyenthongs, Set isachchus, Set isachnois) {
       this.ten = ten;
       this.sachtruyenthongs = sachtruyenthongs;
       this.isachchus = isachchus;
       this.isachnois = isachnois;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getTen() {
        return this.ten;
    }
    
    public void setTen(String ten) {
        this.ten = ten;
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
    public Set getIsachnois() {
        return this.isachnois;
    }
    
    public void setIsachnois(Set isachnois) {
        this.isachnois = isachnois;
    }




}


