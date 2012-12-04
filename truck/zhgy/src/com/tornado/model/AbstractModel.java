package com.tornado.model;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;

import com.tornado.persistence.PMF;
import com.tornado.persistence.SessionFactoryHelper;

/**
 * 模型层的基类
 * @author Vince
 *
 * @param <T>
 */
public abstract class AbstractModel <T> {
	
	protected Class<T> entityClass = null;
	
	protected T entity = null;
	
	
	public AbstractModel()
	{
		entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	/**
	 * 保存这个模型
	 */
	public void save()
	{
		if(entity!=null)
			PMF.save(entity);
	}
	
	/**
	 * 保存或者更新这个模型
	 */
	public void restore()
	{
		if(entity!=null)
			PMF.restore(entity);
	}
	
	/**
	 * 更新这个模型
	 */
	public void modify()
	{
		if(entity!=null)
			PMF.update(entity);
	}
	
	/**
	 * 删除这个模型
	 */
	public void remove()
	{
		if(entity!=null)
			PMF.remove(entity);
	}
	
	/**
	 * 保存这个模型
	 * @param entity
	 */
	public void save(T entity)
	{
		PMF.save(entity);
	}
	
	/**
	 * 保存或者更新这个模型
	 * @param entity
	 */
	public void restore(T entity)
	{
		PMF.restore(entity);
	}
	
	/**
	 * 更新这个模型
	 * @param entity
	 */
	public void modify(T entity)
	{
		PMF.update(entity);
	}
	
	/**
	 * 删除这个模型
	 * @param entity
	 */
	public void remove(T entity)
	{
		PMF.remove(entity);
	}
	
	/**
	 * 当前模型已有的数量
	 * @return
	 */
	public Long count() 
	{
		String hql = "select count(*) from "+entityClass.getName();
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		List d = query.list();
		return (Long)(d.get(0));
	}
	
	/**
	 * 返回所有 已有模型
	 * @return
	 */
	public List<T> list()
	{
		String hql = "from "+entityClass.getName();
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		return query.list();
	}
	
	/**
	 * 返回从start开始的count个模型
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
	
	/**
	 * 通过hql获得所有数据
	 * @param hql hql语句
	 * @param map 参数
	 * @return
	 */
	public List<T> list(String hql,Map map)
	{
		return PMF.list(hql,map);
	}
	
	/**
	 * 通过hql获得从s开始的c条数据
	 * @param hql hql hql语句
	 * @param map map 参数
	 * @param s 其实index
	 * @param c 取出数据量
	 * @return
	 */
	public List<T> list(String hql,Map map,int s,int c)
	{
		return PMF.list(hql,map,s,c);
	}
	
}
