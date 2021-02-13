package test;

import com.maben.dlxm.domain.ElecText;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.junit.Test;

import java.util.Date;

public class HibernateTest {
    @Test
    public void save() {
        Configuration configuration = new Configuration();
//        加载hibernate.cfg.xml
        configuration.configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
//      操作数据库
        ElecText elecText = new ElecText();
        elecText.setTextName("test-name");
        elecText.setTextDate(new Date());
        elecText.setTextRemark("this is remark");
        session.save(elecText);
        transaction.commit();
        session.close();
    }
}
