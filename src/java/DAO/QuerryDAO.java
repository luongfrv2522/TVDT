
package DAO;

import Controller.HibernateUtil;
import Model.*;
import java.util.LinkedList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class QuerryDAO<P>{
    public List<P> search(String Entity,String Atb, String keyString){
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<P> results=new LinkedList<P>();
        try {
            trns = session.beginTransaction();
            String hql;
            Query query;
            hql= "FROM "+ Entity +" WHERE "+Atb+" LIKE :keyString";
            query = session.createQuery(hql);
            query.setParameter("keyString", "%"+ keyString +"%");
            results.addAll((List<P>)query.list());
        } catch (RuntimeException e) {
            if (trns != null) {
                trns.rollback();
            }
            System.out.println(e);
        } finally {
            session.flush();
            session.close();
        }
        return results;
    }
    public static void main(String[] args) {
        QuerryDAO<Nguoidoc> querryDAO = new QuerryDAO<Nguoidoc>();
        List<Nguoidoc> listItem=querryDAO.search("Nguoidoc","Ten","tr");
        for(Nguoidoc item : listItem){
            System.out.println(item.getTen());
        }
        

        //System.out.println(Isachnoi.class.getSimpleName());
        
//        Transaction trns = null;
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        List<Sachtruyenthong> results=new LinkedList<Sachtruyenthong>();
//        try {
//            trns = session.beginTransaction();
//            
//            String hql = "FROM Sachtruyenthong WHERE :thuocTinh like :keyString";
//            Query query = session.createQuery(hql);
//            //query.setParameter("Entity", "Entity");
//            query.setParameter("keyString", "%"+ "con" +"%");
//            results = (List<Sachtruyenthong>)query.list();
//                for(Sachtruyenthong item : results){
//                System.out.println(item.getTen());
//            }
//           
//        } catch (RuntimeException e) {
//            if (trns != null) {
//                trns.rollback();
//            }
//            System.out.println(e);
//        } finally {
//            session.flush();
//            session.close();
//        }
        
    }
}
