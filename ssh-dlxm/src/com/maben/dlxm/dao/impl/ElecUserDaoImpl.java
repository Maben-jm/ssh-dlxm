package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecUserDao;
import com.maben.dlxm.domain.ElecUser;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository(value = ElecUserDao.SERVICE_NAME)
public class ElecUserDaoImpl extends CommonDaoImpl<ElecUser> implements ElecUserDao {

    @Override
    public List<Object[]> findRoleByLogonName(final String name) {
        final String sql = "SELECT b.ddlCode,b.ddlName FROM elec_user_role a " +
                " INNER JOIN elec_systemddl b ON a.roleID = b.ddlCode AND b.keyword = '角色类型' " +
                " INNER JOIN elec_user c ON a.userID = c.userID " +
                " AND c.logonName = ? " +
                " WHERE c.isDuty = '1'";
        List<Object[]> list = (List<Object[]>) this.getHibernateTemplate().execute(new HibernateCallback(){

            public Object doInHibernate(Session session)
                    throws HibernateException, SQLException {
                Query query = session.createSQLQuery(sql);
                query.setParameter(0, name);
                return query.list();
            }

        });
        return list;
    }

    @Override
    public List<Object> findPopedomByLogonName(String name) {
        final String sql = "SELECT a.popedomcode FROM elec_role_popedom a " +
                " INNER JOIN elec_user_role b ON a.roleID = b.roleID " +
                " INNER JOIN elec_user c ON b.userID = c.userID " +
                " AND c.logonName = ?" +
                " WHERE c.isDuty = '1'";
        List<Object> list = (List<Object>) this.getHibernateTemplate().execute(new HibernateCallback(){

            public Object doInHibernate(Session session)
                    throws HibernateException, SQLException {
                Query query = session.createSQLQuery(sql);
                query.setParameter(0, name);
                return query.list();
            }

        });
        return list;
    }

}
