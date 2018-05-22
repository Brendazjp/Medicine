package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Caigou;
import com.dao.CaigouDAO;
import com.util.PageModel;

public class CaigouDAOImpl extends HibernateDaoSupport implements CaigouDAO {

	public void delete(Caigou caigou) {
		this.getHibernateTemplate().delete(caigou);

	}

	public Caigou findById(int id) {
		return (Caigou)this.getHibernateTemplate().get(Caigou.class, id);
	}


	public PageModel findall(int offset) {
		int total=(int)getSession().createQuery("from Caigou").list().size();
		List datas=getSession().createQuery("from Caigou y order by y.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(Caigou caigou) {
		this.getHibernateTemplate().save(caigou);

	}

	public void update(Caigou caigou) {
		this.getHibernateTemplate().update(caigou);

	}

}
