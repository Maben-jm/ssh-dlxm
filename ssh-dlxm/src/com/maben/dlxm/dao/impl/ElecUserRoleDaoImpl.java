package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecUserRoleDao;
import com.maben.dlxm.domain.ElecUserRole;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository(value = ElecUserRoleDao.SERVICE_NAME)
public class ElecUserRoleDaoImpl extends CommonDaoImpl<ElecUserRole> implements ElecUserRoleDao {
    @Override
    public List<Object[]> findUserListByRoleID(final String roleID) {
        final String sql = "SELECT DISTINCT CASE b.roleID WHEN ? THEN '1' ELSE '2' END AS flag," +
                " a.userID,a.userName,a.logonName " +
                " FROM elec_user a " +
                " LEFT OUTER JOIN elec_user_role b ON a.userID = b.userID " +
                " AND b.roleID = ? "+
                " WHERE a.isDuty = '1'";
        List<Object[]> list = (List<Object[]>) this.getHibernateTemplate().execute(new HibernateCallback(){

            public Object doInHibernate(Session session)
                    throws HibernateException, SQLException {
                Query query = session.createSQLQuery(sql);
                query.setParameter(0, roleID);
                query.setParameter(1, roleID);
                return query.list();
            }

        });

        return list;
    }


}
