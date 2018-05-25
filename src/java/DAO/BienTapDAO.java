package DAO;

import Model.Bientap;




public class BienTapDAO extends AbstractDAO<Bientap>{

    @Override
    protected Class getPOJOClass() {
        return Bientap.class;
    }
    public static void main(String[] args) {
        BienTapDAO db = new BienTapDAO();
//        for(Bientap a : db.getList()){
//            System.out.println(a.getId()+" "+a.getTen()+" "+a.getNgaySinh());
//        }
        //System.out.println(db.getById(11).getTen());
    }
}
