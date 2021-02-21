package test;

import org.hibernate.SessionFactory;
import org.jbpm.api.ProcessEngine;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class JBPMTest {

    /**
     * 创建JBPM的18张表
     */
    @Test
    public void create18Tables(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//        使用spring容器创建sessionFactory工厂
        SessionFactory sessionFactory = (SessionFactory) applicationContext.getBean("sessionFactory");

    }
    /**
     * 测试流程引擎对象
     */
    @Test
    public void testProcessEngine(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ProcessEngine processEngine = (ProcessEngine) applicationContext.getBean("processEngine");
        System.out.println("processEngine:"+processEngine);
    }
}
