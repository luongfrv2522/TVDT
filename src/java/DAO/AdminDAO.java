
package DAO;

import Model.Admin;


public class AdminDAO extends AbstractDAO<Admin>{

    @Override
    protected Class getPOJOClass() {
        return Admin.class;
    }
    public static void main(String[] args) {
        AdminDAO db = new AdminDAO();
        for(Admin a : db.getList()){
                System.out.println(a.getId()+" "+a.getTen()+" "+a.getNgaySinh());
        }
    }
}
