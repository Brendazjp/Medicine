package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Chanpin;
import com.dao.ChanpinDAO;
import com.util.PageModel;

public class ChanpinDAOImpl extends HibernateDaoSupport implements ChanpinDAO {
    
	public Chanpin findById(int id) {
		return (Chanpin) this.getHibernateTemplate().get(Chanpin.class, id);
	}

	public void save(Chanpin chanpin) {

		this.getHibernateTemplate().save(chanpin);

	}

	public void update(Chanpin chanpin) {

		this.getHibernateTemplate().update(chanpin);
	}

	public PageModel findall(String sql, int offset) {
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

	public Chanpin findByChanid(String sql) {
		return (Chanpin)this.getSession().createQuery(sql).uniqueResult();
	}

}
