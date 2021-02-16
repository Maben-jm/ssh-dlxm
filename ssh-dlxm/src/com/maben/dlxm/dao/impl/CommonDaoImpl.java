package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.CommonDao;
import com.maben.dlxm.util.GenericSuperClass;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import javax.annotation.Resource;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public class CommonDaoImpl<T> extends HibernateDaoSupport implements CommonDao<T> {

    private Class aClass = GenericSuperClass.getGenericSuperclass(this.getClass());

    @Resource(name = "sessionFactory")
    public final void setSessionFactoryDi(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);

    }

    @Override
    public void save(T entity) {
        this.getHibernateTemplate().save(entity);
    }

    @Override
    public void update(T entity) {
        this.getHibernateTemplate().update(entity);
    }

    @Override
    public T findObjectById(Serializable id) {
        return (T) this.getHibernateTemplate().get(aClass, id);
    }

    @Override
    public List<T> findCollectionByConditionNoPage(String condition, Object[] params, Map<String, String> order) {
//        定义hql语句
        String hql = "FROM  " + aClass.getName() + " o where 1=1 ";
//        拼装hql语句
        String orderCondition = getOrderCondition(order);
        final String finalHql = StringUtils.isBlank(condition)? hql + orderCondition : hql + condition + orderCondition;
//        方法一：直接使用template方法返回
//        final List list = this.getHibernateTemplate().find(hql, params);
//        方法二：调用回调函数返回（主要是写SQL语句时用到了）
        final List list = this.getHibernateTemplate().execute(new HibernateCallback<List>() {
            @Override
            public List doInHibernate(Session session) throws HibernateException, SQLException {
//                session.createSQLQuery()  //这里是写SQL语句的 ！！！！！！！
                Query query = session.createQuery(finalHql);
                if (Objects.nonNull(params) && params.length>0){
                    for (int i = 0; i < params.length; i++) {
                        query.setParameter(i,params[i]);
                    }
                }
                return query.list();
            }
        });
        return list;
    }
    @Override
    public List<T> findCollectionByConditionNoPageWithCache(String condition, Object[] params, Map<String, String> order) {
        String hql = "FROM  " + aClass.getName() + " o where 1=1 ";
        String orderCondition = getOrderCondition(order);
        final String finalHql = StringUtils.isBlank(condition)? hql + orderCondition : hql + condition + orderCondition;
        final List list = this.getHibernateTemplate().execute(new HibernateCallback<List>() {
            @Override
            public List doInHibernate(Session session) throws HibernateException, SQLException {
//                session.createSQLQuery()  //这里是写SQL语句的 ！！！！！！！
                Query query = session.createQuery(finalHql);
                if (Objects.nonNull(params) && params.length>0){
                    for (int i = 0; i < params.length; i++) {
                        query.setParameter(i,params[i]);
                    }
                }
                query.setCacheable(true);
                return query.list();
            }
        });
        return list;
    }

    private String getOrderCondition(Map<String, String> order) {
        if (Objects.isNull(order) || order.isEmpty()) {
            return "";
        }

        StringBuilder orderCondition = new StringBuilder(" order by ");
        Set<String> keySet = order.keySet();

        for (String key : keySet) {
            orderCondition.append(" ").append(key).append(" ").append(order.get(key)).append(",");
        }
        return orderCondition.substring(0, orderCondition.length() - 1);
    }

    @Override
    public void deleteObjectByIds(Serializable... ids) {
        if (Objects.isNull(ids) || ids.length == 0) {
            return;
        }
        for (Serializable id : ids) {
            this.getHibernateTemplate().delete(findObjectById(id));
        }
    }

    @Override
    public void deleteObjectByCollection(List<T> list) {
        this.getHibernateTemplate().deleteAll(list);
    }
}
