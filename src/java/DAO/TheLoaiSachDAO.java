
package DAO;

import Model.Theloaisach;


public class TheLoaiSachDAO extends AbstractDAO<Theloaisach>{

    @Override
    protected Class getPOJOClass() {
        return Theloaisach.class;
    }
    public static void main(String[] args) {
        TheLoaiSachDAO db = new TheLoaiSachDAO();
        for(Theloaisach a : db.getList()){
            System.out.println(a.getId()+" "+a.getTen());
        }
    }
}
