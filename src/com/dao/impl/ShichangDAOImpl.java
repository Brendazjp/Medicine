package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Shichang;
import com.dao.ShichangDAO;
import com.util.PageModel;

public class ShichangDAOImpl extends HibernateDaoSupport implements ShichangDAO {

	public Shichang findById(int id) {
		return (Shichang)this.getHibernateTemplate().get(Shichang.class, id);
	}

	public PageModel findStr(String sql, int offset) {
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

	public PageModel findall(int offset) {
		int total=(int)getSession().createQuery("from Shichang").list().size();
		List datas=getSession().createQuery("from Shichang s order by s.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(Shichang shichang) {
        
		this.getHibernateTemplate().save(shichang);
	}

	public void update(Shichang shichang) {
		
		this.getHibernateTemplate().update(shichang);

	}

	public List findChengShi(String hql) {
		return this.getSession().createQuery(hql).list();
	}

	public Shichang find(String sql) {
		
		return (Shichang)getSession().createQuery(sql).uniqueResult();
	}

}
