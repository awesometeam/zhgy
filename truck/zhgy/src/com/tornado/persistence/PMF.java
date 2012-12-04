package com.tornado.persistence;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class PMF {

	/*
	 * param:sql sql语句，entityClass 对应entity类型
	 */
//	public static List get(String sql,Class [] entityClasses)
//	{
//		Session session = SessionFactoryHelper.getSession();
//		Transaction trans = null;
//		List result = null;
//		SQLQuery query = null;
//		try
//		{
//			trans = session.beginTransaction();
//			query = session.createSQLQuery(sql);
//			if(entityClasses!=null)
//			{
//				query = session.createSQLQuery(sql);
//				for(Class c : entityClasses)
//				{
//					query.addEntity(c);
//				}
//			}
//			
//			result = query.list();
//			trans.commit();
//			
//		} catch(Exception e)
//		{
//			e.printStackTrace();
//			trans.rollback();
//			
//		} finally
//		{
////			session.clear();
//			session.close();
//		}
//		return result;
//	}
	
	/*
	 * param:sql sql语句
	 */
//	public static List get(String sql)
//	{
//		return get(sql,null);
//	}
	
	/*
	 * 保存
	 */
	public static <T> void save(T entity)
	{
		Session session = SessionFactoryHelper.getSession();
		Transaction trans = null;
		try
		{
			trans = session.beginTransaction();
			session.save(entity);
			trans.commit();
			
		} catch(Exception e)
		{
			e.printStackTrace();
			trans.rollback();
			
		} finally
		{
//			session.clear();
			session.close();
		}
	}
	
	/*
	 * 更新
	 */
	public static <T> void update(T entity)
	{
		Session session = SessionFactoryHelper.getSession();
		Transaction trans = null;
		try
		{
			trans = session.beginTransaction();
			session.update(entity);
			trans.commit();
			
		} catch(Exception e)
		{
			e.printStackTrace();
			trans.rollback();
			
		} finally
		{
//			session.clear();
			session.close();
		}
	}
	
	/*
	 * 保存或更新
	 */
	public static <T> void restore(T entity)
	{
		Session session = SessionFactoryHelper.getSession();
		Transaction trans = null;
		try
		{
			trans = session.beginTransaction();
			session.saveOrUpdate(entity);
			trans.commit();
			
		} catch(Exception e)
		{
			e.printStackTrace();
			trans.rollback();
			
		} finally
		{
//			session.clear();
			session.close();
		}
	}
	
	/*
	 * 删除
	 */
	public static <T> void remove(T entity)
	{
		Session session = SessionFactoryHelper.getSession();
		Transaction trans = null;
		try
		{
			trans = session.beginTransaction();
//			session.merge(entity);
//			session.evict(entity);
			session.clear();
			session.delete(entity);
			trans.commit();
			
		} catch(Exception e)
		{
			e.printStackTrace();
			trans.rollback();
			
		} finally
		{
			session.close();
		}
	}
	
	public static <T> List<T> list(String hql)
	{
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		return query.list();
	}
	
	public static <T> List<T> list(String hql,Map<String,Object> map)
	{
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		Set<String> key = map.keySet();
		for (Iterator it = key.iterator(); it.hasNext();) 
		{
			String s = (String) it.next(); 
			query.setParameter(s, map.get(s));
		}
		return query.list();
	}
	
	public static <T> List<T> list(String hql,Map<String,Object> map,int start, int count)
	{
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		Set<String> key = map.keySet();
		for (Iterator it = key.iterator(); it.hasNext();) 
		{
			String s = (String) it.next(); 
			query.setParameter(s, map.get(s));
		}
		query.setFirstResult(start).setMaxResults(count);
		return query.list();
	}
}
