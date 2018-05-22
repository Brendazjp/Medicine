package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Ruku;
import com.dao.RukuDAO;
import com.util.PageModel;

public class RukuDAOImpl extends HibernateDaoSupport implements RukuDAO {

	public void delete(Ruku ruku) {
		this.getHibernateTemplate().delete(ruku);

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

	public Ruku findById(int id) {
		return (Ruku)this.getHibernateTemplate().get(Ruku.class, id);
	}

	public void save(Ruku ruku) {
		this.getHibernateTemplate().save(ruku);

	}

}
