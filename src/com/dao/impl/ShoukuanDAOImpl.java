package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Shoukuan;
import com.dao.ShoukuanDAO;
import com.util.PageModel;

public class ShoukuanDAOImpl extends HibernateDaoSupport implements ShoukuanDAO {

	public void delete(Shoukuan shoukuan) {
		this.getHibernateTemplate().delete(shoukuan);

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

	public Shoukuan findById(int id) {
		
		return (Shoukuan)this.getHibernateTemplate().get(Shoukuan.class, id);
	}

	public void save(Shoukuan shoukuan) {
		this.getHibernateTemplate().save(shoukuan);

	}

	public void update(Shoukuan shoukuan) {

		this.getHibernateTemplate().update(shoukuan);
	}

	public Shoukuan findbyxiaoid(String xiaoid) {
		
		return (Shoukuan)getSession().createQuery("from Shoukuan where xiaoshou.xiaoid='"+xiaoid+"' and xiaoshou.zhuangtai in ('退货','退单')").uniqueResult();
	}

}
