
package DAO;

import Model.Tacgia;


public class TacGiaDAO extends AbstractDAO<Tacgia>{

    @Override
    protected Class getPOJOClass() {
        return Tacgia.class;
    }
    public static void main(String[] args) {
        TacGiaDAO db = new TacGiaDAO();
        for(Tacgia a : db.getList()){
            System.out.println(a.getId()+" "+a.getTen()+" "+a.getNgaySinh());
        }
    }
}
