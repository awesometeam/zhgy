package com.tornado.persistence;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class PMF {

	/*
	 * param:sql sql语句，entityClass 对应entity类型
	 */
	public static List get(String sql,Class [] entityClasses)
	{
		Session session = SessionFactoryHelper.getSession();
		Transaction trans = null;
		List result = null;
		SQLQuery query = null;
		try
		{
			trans = session.beginTransaction();
			query = session.createSQLQuery(sql);
			if(entityClasses!=null)
			{
				query = session.createSQLQuery(sql);
				for(Class c : entityClasses)
				{
					query.addEntity(c);
				}
			}
			
			result = query.list();
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
		return result;
	}
	
	/*
	 * param:sql sql语句
	 */
	public static List get(String sql)
	{
		return get(sql,null);
	}
	
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
			session.clear();
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
			session.clear();
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
			session.clear();
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
	
}
