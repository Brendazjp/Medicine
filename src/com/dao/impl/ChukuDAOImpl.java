package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Chuku;
import com.dao.ChukuDAO;
import com.util.PageModel;

public class ChukuDAOImpl extends HibernateDaoSupport implements ChukuDAO {

	public void delete(Chuku chuku) {
		this.getHibernateTemplate().delete(chuku);

	}

	public PageModel find(String sql, int offset) {
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

	public Chuku findById(int id) {
		
		return (Chuku)this.getHibernateTemplate().get(Chuku.class, id);
	}

	public void save(Chuku chuku) {

		this.getHibernateTemplate().save(chuku);
	}

}
