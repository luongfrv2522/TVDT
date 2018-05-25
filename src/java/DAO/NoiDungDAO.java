
package DAO;

import Model.Noidung;


public class NoiDungDAO extends AbstractDAO<Noidung>{

    @Override
    protected Class getPOJOClass() {
        return Noidung.class;
    }
    
}
