package control;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    public HibernateUtil(){}

    private static SessionFactory buildSessionFactory(){
        try {
            // Create the SessionFactory from hibernate.cfg.xml file
            Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
            SessionFactory factory = cfg.buildSessionFactory();
            return new AnnotationConfiguration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            ex.printStackTrace();
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static Session getSession(){ return sessionFactory.openSession();}

}