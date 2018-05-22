package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.User;
import com.bean.Yanchan;
import com.dao.YanchanDAO;
import com.util.PageModel;

public class YanchanDAOImpl extends HibernateDaoSupport implements YanchanDAO {

	public void delete(Yanchan yanchan) {
   
		this.getHibernateTemplate().delete(yanchan);
	}

	public Yanchan findById(int id) {
		
		return (Yanchan)this.getHibernateTemplate().get(Yanchan.class, id);
	}

	public void save(Yanchan yanchan) {
		this.getHibernateTemplate().save(yanchan);

	}

	public void update(Yanchan yanchan) {
		this.getHibernateTemplate().update(yanchan);

	}
	public PageModel findall(int offset)
	{
		int total=(int)getSession().createQuery("from Yanchan").list().size();
		List datas=getSession().createQuery("from Yanchan y order by y.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
		
	}
	public PageModel findStr(String sql,int offset){
		int total=(int)getSession().createQuery(sql).list().size();
		List datas=getSession().createQuery(sql)
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
		
	}

	public Yanchan find(String sql) {
		
		return (Yanchan)getSession().createQuery(sql).uniqueResult();
	}

}
