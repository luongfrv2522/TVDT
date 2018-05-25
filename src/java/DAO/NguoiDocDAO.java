
package DAO;

import Model.Nguoidoc;


public class NguoiDocDAO extends AbstractDAO<Nguoidoc>{

    @Override
    protected Class getPOJOClass() {
        return Nguoidoc.class;
    }
    public static void main(String[] args) {
        NguoiDocDAO db = new NguoiDocDAO();
        for(Nguoidoc a : db.getList()){
            System.out.println(a.getId()+" "+a.getTen());
        }
    }
}
