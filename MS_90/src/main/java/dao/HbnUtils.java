package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HbnUtils {
    private static SessionFactory sessionFactory;

    public static Session getSession() {//实例方法
        return getSessionFactory().getCurrentSession();
    }
    public static SessionFactory getSessionFactory() {
        //创建session工厂，session不是会话，而是一个数据库连接对象

        if(sessionFactory== null || sessionFactory.isClosed()){
            sessionFactory =new Configuration().configure().buildSessionFactory();
        }
        return sessionFactory;
    }
}
