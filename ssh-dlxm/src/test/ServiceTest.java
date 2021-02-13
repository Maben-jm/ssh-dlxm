package test;

import com.maben.dlxm.dao.ElecTextDao;
import com.maben.dlxm.domain.ElecText;
import com.maben.dlxm.service.ElecTextService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ServiceTest {

    @Test
    public void save() throws Exception {

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ElecTextService elecTextService = (ElecTextService) applicationContext.getBean(ElecTextService.SERVICE_NAME);
        ElecText elecText = new ElecText();
        elecText.setTextName("maben123");
        elecText.setTextDate(new Date());
        elecText.setTextRemark("this is remark");
        elecTextService.save(elecText);

    }

    @Test
    public void update() throws Exception {

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ElecTextService elecTextService = (ElecTextService) applicationContext.getBean(ElecTextService.SERVICE_NAME);
        ElecText elecText = new ElecText();
        elecText.setTextId("ff8080817790cf97017790d2c6e10002");
        elecText.setTextName("更新姓名");
        elecText.setTextDate(new Date());
        elecText.setTextRemark("更新备注");
        elecTextService.update(elecText);

    }

    @Test
    public void findObjectById() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ElecTextService elecTextService = (ElecTextService) applicationContext.getBean(ElecTextService.SERVICE_NAME);
        Serializable id = "ff8080817790cf97017790d2c6e10002";
        ElecText elecText = elecTextService.findObjectById(id);
        System.out.println(elecText);
    }

    @Test
    public void deleteObjectByIds() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ElecTextService elecTextService = (ElecTextService) applicationContext.getBean(ElecTextService.SERVICE_NAME);
        Serializable[] ids = {"ff8080817791c438017791c4610c0001", "ff8080817790cf97017790d2c6e10002"};
        elecTextService.deleteObjectByIds(ids);
    }

    @Test
    public void deleteObjectByCollection() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ElecTextService elecTextService = (ElecTextService) applicationContext.getBean(ElecTextService.SERVICE_NAME);
        ElecText elecText1 = new ElecText();
        elecText1.setTextId("ff80808177903e900177903e945d0001");
        ElecText elecText2 = new ElecText();
        elecText2.setTextId("ff80808177903f520177903f564f0001");
        List<ElecText> list = new ArrayList<ElecText>() {{
            add(elecText1);
            add(elecText2);
        }};
        elecTextService.deleteObjectByCollection(list);
    }

    @Test
    public void findCollectionByCondition(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ElecTextService elecTextService = (ElecTextService) applicationContext.getBean(ElecTextService.SERVICE_NAME);
        ElecText elecText = new ElecText();
        elecText.setTextName("3");
        elecText.setTextRemark("3");
        List<ElecText> list = elecTextService.findCollectionByConditionNoPage(elecText);
        System.out.println(list);
    }


}
