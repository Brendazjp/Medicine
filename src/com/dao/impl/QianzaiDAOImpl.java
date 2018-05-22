package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Qianzai;
import com.dao.QianzaiDAO;
import com.util.PageModel;

public class QianzaiDAOImpl extends HibernateDaoSupport implements QianzaiDAO {

	public void delete(Qianzai qianzai) {
	
		this.getHibernateTemplate().delete(qianzai);
	}

	public Qianzai findById(int id) {
		
		return (Qianzai)this.getHibernateTemplate().get(Qianzai.class, id);
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

	public void save(Qianzai qianzai) {
		this.getHibernateTemplate().save(qianzai);
	}

	public void update(Qianzai qianzai) {
		this.getHibernateTemplate().update(qianzai);

	}

	public Qianzai find(String sql) {
		
		return (Qianzai)getSession().createQuery(sql).uniqueResult();
	}

}
