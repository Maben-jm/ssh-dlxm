package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecSystemDDLDao;
import com.maben.dlxm.domain.ElecSystemDDL;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository(value = ElecSystemDDLDao.SERVICE_NAME)
public class ElecSystemDDLDaoImpl extends CommonDaoImpl<ElecSystemDDL> implements ElecSystemDDLDao {
    @Override
    public List<Object> findElecSystemDDLWithDistinct() {
        final String sql = "select keyword from elec_systemddl group by keyword";
        List<Object> list = this.getHibernateTemplate().execute(new HibernateCallback<List<Object>>() {
            @Override
            public List<Object> doInHibernate(Session session) throws HibernateException, SQLException {
                SQLQuery query = session.createSQLQuery(sql);
                return query.list();
            }
        });
        return list;
    }
}
