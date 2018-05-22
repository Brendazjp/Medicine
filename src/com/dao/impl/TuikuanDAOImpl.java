package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Tuikuan;
import com.dao.TuikuanDAO;
import com.util.PageModel;

public class TuikuanDAOImpl extends HibernateDaoSupport implements TuikuanDAO {

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

	public Tuikuan findById(int id) {
		
		return (Tuikuan)this.getHibernateTemplate().get(Tuikuan.class, id);
	}

	public void save(Tuikuan tuikuan) {
		this.getHibernateTemplate().save(tuikuan);

	}

	public void delete(Tuikuan tuikuan) {

		this.getHibernateTemplate().delete(tuikuan);
	}

}
