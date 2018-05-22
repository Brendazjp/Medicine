package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Kehu;
import com.dao.KehuDAO;
import com.util.PageModel;

public class KehuDAOImpl extends HibernateDaoSupport implements KehuDAO {

	public Kehu findById(int id) {
		return (Kehu)this.getHibernateTemplate().get(Kehu.class, id);
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

	public void save(Kehu kehu) {
		this.getHibernateTemplate().save(kehu);

	}

	public void update(Kehu kehu) {
		this.getHibernateTemplate().update(kehu);

	}

	public List findBydu(String sql) {
		return this.getSession().createQuery(sql).list();
	}

	public Kehu findBykeid(String kehuid) {
		
		return (Kehu)this.getSession().createQuery("from Kehu where kehuid='"+kehuid+"'").uniqueResult();
	}

}
