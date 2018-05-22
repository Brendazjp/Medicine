package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Cangku;
import com.dao.CangkuDAO;
import com.util.PageModel;

public class CangkuDAOImpl extends HibernateDaoSupport implements CangkuDAO {


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

	public Cangku findById(int id) {
		
		return (Cangku)this.getHibernateTemplate().get(Cangku.class, id);
	}

	public void save(Cangku cangku) {
		this.getHibernateTemplate().save(cangku);

	}

	public void update(Cangku cangku) {

		this.getHibernateTemplate().update(cangku);
	}


}
