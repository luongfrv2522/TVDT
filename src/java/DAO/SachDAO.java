
package DAO;

import Model.Sach;
import java.util.List;


public abstract class SachDAO<T extends Sach> extends AbstractDAO<T>{

    @Override
    protected abstract Class getPOJOClass();
    @Override   
    public T getById(int ID) {
        T item =super.getById(ID);
        item.setTacgia(new TacGiaDAO().getById(item.getTacgia().getId()));
        item.setBientap(new BienTapDAO().getById(item.getBientap().getId()));
        item.setTheloaisach(new TheLoaiSachDAO().getById(item.getTheloaisach().getId()));
        return item;
    }
    @Override
    public List<T> getList() {
        List<T> listItem =super.getList();
        for(T item : listItem){
            item.setTacgia(new TacGiaDAO().getById(item.getTacgia().getId()));
            item.setBientap(new BienTapDAO().getById(item.getBientap().getId()));
            item.setTheloaisach(new TheLoaiSachDAO().getById(item.getTheloaisach().getId()));
        }
        return listItem;
    }    
    
}
