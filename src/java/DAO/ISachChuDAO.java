
package DAO;

import Model.Isachchu;


public class ISachChuDAO extends SachDAO<Isachchu>{

    @Override
    protected Class getPOJOClass() {
        return Isachchu.class;
    }
    
}
