package com.tornado.persistence;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import com.tornado.util.TimeUtil;

public class SessionFactoryHelper {
	
    private static final SessionFactory sessionFactory;
    private static final ServiceRegistry serviceRegistry;
    private static final ThreadLocal session = new ThreadLocal();
    
    static {
        try {
            //
            // Build a SessionFactory object from session-factory configuration
            // defined in the hibernate.cfg.xml file. In this file we register
            // the JDBC connection information, connection pool, the hibernate
            // dialect that we used and the mapping to our hbm.xml file for each
            // Pojo (Plain Old Java Object).
            //
//            sessionFactory = new Configuration().configure().buildSessionFactory();
        	Configuration configuration = new Configuration();
            configuration.configure();
            serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();        
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);

            TimeUtil.init();
            
        } catch (Throwable e) {
            System.err.println("Error in creating SessionFactory object."
                    + e.getMessage());
            throw new ExceptionInInitializerError(e);
        }
    }
 
    /**
     * A static method for other application to get SessionFactory object
     * initialized in this helper class.
     */
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    

    public static Session getSession() throws HibernateException 
    {
        Session s = (Session) session.get();
        if (s == null || !s.isOpen()) 
        {
            s = getSessionFactory().openSession();
            session.set(s);
        }
        return s;
    }
    
    public static void closeSession() throws HibernateException 
    {
        Session s = (Session) session.get();
        session.set(null);
        if (s != null) 
        {
            s.close();
        }
    }
    
}
