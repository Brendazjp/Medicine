package com.dao.impl;

import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.ShengChan;
import com.dao.ShengChanDAO;
import com.util.PageModel;

public class ShengChanDAOImpl extends HibernateDaoSupport implements ShengChanDAO {

	public void  deleteById(int id) {

		this.getSession().delete(
				this.getSession().load(ShengChan.class, id)
		);
	}

	public List getAll() {

		String hql = "from ShengChan";
		
		return this.getSession().createQuery(hql).list();
	}

	public ShengChan getShengChanById(int id) {
		
		return (ShengChan)this.getSession().load(ShengChan.class, id);
	}

	public PageModel getShengChans(int offset) {
		int total=(int)getSession().createQuery("from ShengChan").list().size();
		List datas=getSession().createQuery("from ShengChan y order by y.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(ShengChan sc) {

		this.getSession().save(sc);
	}

	public void update(ShengChan sc) {

		this.getSession().update(sc);
	}

}
