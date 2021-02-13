package com.maben.dlxm.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface CommonDao<T> {
    public void save(T entity);
    public void update(T entity);
    public T findObjectById(Serializable id);
    public List<T> findCollectionByConditionNoPage(String condition, Object[] params, Map<String,String> order);
    public void deleteObjectByIds(Serializable... ids);
    public void deleteObjectByCollection(List<T> list);
}
