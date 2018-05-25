
package DAO;

import Controller.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


public abstract class AbstractDAO<P> {
    protected abstract Class getPOJOClass();
    public List<P> getList() {
        List<P> item = new ArrayList<P>();
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            item = session.createCriteria(getPOJOClass()).list();
        } catch (RuntimeException e) {
        } finally {
            session.flush();
            session.close();
        }
        return item;
    }

    public void Add(P item) {
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            session.save(item);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trns != null) {
                trns.rollback();
            }
        } finally {
            session.flush();
            session.close();
        }
    }
    public void Delete(int ID) {
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            P item = (P) session.load(getPOJOClass(), ID);
            session.delete(item);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trns != null) {
                trns.rollback();
            }
        } finally {
            session.flush();
            session.close();
        }
    }
    public void Update(P item) {
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            session.update(item);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trns != null) {
                trns.rollback();
            }
        } finally {
            session.flush();
            session.close();
        }
    }
    public P getById(int ID) {
        P item = null;
        Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            item = (P)session.get(getPOJOClass(), ID);
        } catch (RuntimeException e) {
        } finally {
            session.flush();
            session.close();
        }
        return item;
    }
    
}
