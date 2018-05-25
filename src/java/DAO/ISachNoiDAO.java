/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Controller.HibernateUtil;
import Model.Isachnoi;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class ISachNoiDAO extends SachDAO<Isachnoi>{

    @Override
    protected Class getPOJOClass() {
        return Isachnoi.class;
    }
    
    @Override
    public List<Isachnoi> getList(){
        List<Isachnoi> listItem = super.getList();
        for(Isachnoi item : listItem){
            item.setVitualNguoiDoc(new NguoiDocDAO().getById(item.getNguoiDoc()));
        }
        return listItem;
    }

    @Override
    public Isachnoi getById(int ID) {
        Isachnoi item = super.getById(ID);
        item.setVitualNguoiDoc(new NguoiDocDAO().getById(item.getNguoiDoc()));
        return item;
    }

    public static void main(String[] args) {
        ISachNoiDAO db = new ISachNoiDAO();
        for(Isachnoi a : db.getList()){
            System.out.println(a.getId()+" "+a.getTen());
        }
    }
}
