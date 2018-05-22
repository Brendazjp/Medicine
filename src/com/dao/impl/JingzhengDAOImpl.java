package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Jingzheng;
import com.dao.JingzhengDAO;
import com.util.PageModel;

public class JingzhengDAOImpl extends HibernateDaoSupport implements
		JingzhengDAO {

	public void delete(Jingzheng jingzheng) {

		this.getHibernateTemplate().delete(jingzheng);
	}

	public Jingzheng findById(int id) {
		
		return (Jingzheng)this.getHibernateTemplate().get(Jingzheng.class, id);
		
	}

	public PageModel findStr(String sql, int offset) {
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

	public PageModel findall(int offset) {
		int total=(int)getSession().createQuery("from Jingzheng").list().size();
		List datas=getSession().createQuery("from Jingzheng j order by j.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(Jingzheng jingzheng) {

		this.getHibernateTemplate().save(jingzheng);
	}

	public void update(Jingzheng jingzheng) {
		this.getHibernateTemplate().update(jingzheng);

	}

	public Jingzheng find(String sql) {
		
		return (Jingzheng)getSession().createQuery(sql).uniqueResult();
	}

}
