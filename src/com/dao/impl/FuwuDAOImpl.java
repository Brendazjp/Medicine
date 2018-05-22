package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Fuwu;
import com.dao.FuwuDAO;
import com.util.PageModel;

public class FuwuDAOImpl extends HibernateDaoSupport implements FuwuDAO {

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

	public Fuwu findById(int id) {
		return (Fuwu)this.getHibernateTemplate().get(Fuwu.class, id);
	}

	public void save(Fuwu fuwu) {
         this.getHibernateTemplate().save(fuwu);
	}

	public void update(Fuwu fuwu) {

		this.getHibernateTemplate().update(fuwu);
	}
	public void delete(Fuwu fuwu)
	{
		this.getHibernateTemplate().delete(fuwu);
	}
	

}
