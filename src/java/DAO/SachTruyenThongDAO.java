
package DAO;

import Model.Sachtruyenthong;


public class SachTruyenThongDAO extends SachDAO<Sachtruyenthong>{

    @Override
    protected Class getPOJOClass() {
        return Sachtruyenthong.class;
    }
    public static void main(String[] args) {
        SachTruyenThongDAO db = new SachTruyenThongDAO();
        for(Sachtruyenthong a : db.getList()){
                System.out.println(a.getId()+" "+a.getTen()+" "+a.getNgayXuatBan());
        }
        //System.out.println(db.getById(1).getTen());
    }
}
