package com.dao;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.Memberstyle;


public class MemberstyleDao extends HibernateDaoSupport
{

	public void save(Memberstyle transientInstance)
	{
		try
		{
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re)
		{		
			throw re;
		}
	}

	public void delete(Memberstyle persistentInstance)
	{
		try
		{
			getHibernateTemplate().delete(persistentInstance);			
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public Memberstyle findById(java.lang.Integer id)
	{
		try
		{
			Memberstyle instance = (Memberstyle) getHibernateTemplate().get(
					"com.model.Memberstyle", id);
			return instance;
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public List findAll()
	{
		try
		{
			String queryString = "from Memberstyle";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public Memberstyle merge(Memberstyle detachedInstance)
	{
		try
		{
			Memberstyle result = (Memberstyle) getHibernateTemplate().merge(
					detachedInstance);
			return result;
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public void attachDirty(Memberstyle instance)
	{
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public void attachClean(Memberstyle instance)
	{
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public static MemberstyleDao getFromApplicationContext(ApplicationContext ctx)
	{
		return (MemberstyleDao) ctx.getBean("MemberstyleDao");
	}
}