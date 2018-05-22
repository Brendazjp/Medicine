package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Kucun;
import com.dao.KucunDAO;
import com.util.PageModel;

public class KucunDAOImpl extends HibernateDaoSupport implements KucunDAO {

	public void delete(Kucun kucun) {
		this.getHibernateTemplate().delete(kucun);

	}

	public PageModel find(String sql, int offset) {
		int total = (int) getSession().createQuery(sql).list().size();
		List datas = getSession().createQuery(sql)
		                         .setFirstResult(offset)
				                 .setMaxResults(15)
				                 .list();
		PageModel pm = new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public Kucun findById(int id) {
		return (Kucun)this.getHibernateTemplate().get(Kucun.class, id);
	}

	public void save(Kucun kucun) {
		this.getHibernateTemplate().save(kucun);

	}

	public void update(Kucun kucun) {

		this.getHibernateTemplate().update(kucun);
	}
	public Kucun findByKcid(String sql)
	{
		return (Kucun)this.getSession().createQuery(sql).uniqueResult();
	}

}
