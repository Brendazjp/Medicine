package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Xiaoshou;
import com.dao.XiaoshouDAO;
import com.util.PageModel;

public class XiaoshouDAOImpl extends HibernateDaoSupport implements XiaoshouDAO {

	public void delete(Xiaoshou xiaoshou) {
		this.getHibernateTemplate().delete(xiaoshou);

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

	public Xiaoshou findById(int id) {
		
		return (Xiaoshou)this.getHibernateTemplate().get(Xiaoshou.class, id);
	}

	public void save(Xiaoshou xiaoshou) {
		this.getHibernateTemplate().save(xiaoshou);

	}

	public void update(Xiaoshou xiaoshou) {

		this.getHibernateTemplate().update(xiaoshou);
	}

	@SuppressWarnings("unchecked")
	public List findall(String sql){
		List list=getSession().createQuery(sql).list();
		return list;
	}

	public long findOnly(String sql) {
		
		Long sum = (Long)getSession().createQuery(sql).uniqueResult();
		return sum.longValue();
	}

	public Xiaoshou findByxiaoid(String sql) {
		return (Xiaoshou)getSession().createQuery(sql).uniqueResult();
	}
}
