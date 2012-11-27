package com.tornado.model;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Query;

import com.tornado.persistence.PMF;
import com.tornado.persistence.SessionFactoryHelper;

public abstract class AbstractModel <T> {
	
	protected Class<T> entityClass = null;
	
	public AbstractModel()
	{
		entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	public void save(T entity)
	{
		PMF.save(entity);
	}
	
	public void restore(T entity)
	{
		PMF.restore(entity);
	}
	
	public void modify(T entity)
	{
		PMF.update(entity);
	}
	
	public void remove(T entity)
	{
		PMF.remove(entity);
	}
	
	public Long count() 
	{
		String hql = "select count(*) from "+entityClass.getName();
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		List d = query.list();
		return (Long)(d.get(0));
	}
	
	public List<T> list()
	{
		String hql = "from "+entityClass.getName();
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		return query.list();
	}
	
	/**
	 * 从start开始，取count条数据
	 * @param start
	 * @param count
	 * @return
	 */
	public List<T> list(int start,int count)
	{
		String hql = "from "+entityClass.getName();
		Query query=SessionFactoryHelper.getSession().createQuery(hql).setFirstResult(start).setMaxResults(count);
		return query.list();
	}
	
}
