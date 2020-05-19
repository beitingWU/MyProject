package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.model.Notice;

public class NoticeDao extends HibernateDaoSupport
{

	public void save(Notice transientInstance)
	{
		try
		{
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public void delete(Notice persistentInstance)
	{
		try
		{
			getHibernateTemplate().delete(persistentInstance);
		} catch (RuntimeException re)
		{
			throw re;
		}
	}

	public Notice findById(java.lang.Integer id)
	{
		try
		{
			Notice instance = (Notice) getHibernateTemplate().get(
					"com.model.Notice", id);
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
			String queryString = "from Notice order by nid desc";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			throw re;
		}
	}
}