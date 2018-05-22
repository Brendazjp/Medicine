package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.GongYingShang;
import com.dao.GongYingShangDAO;
import com.util.PageModel;

public class GongYingShangDAOImpl extends HibernateDaoSupport implements
		GongYingShangDAO {

	public void deleteById(int id) {

		this.getSession().delete(this.getSession().load(GongYingShang.class, id));
	}

	public List getAll() {

		String hql = "from GongYingShang";
		return this.getSession().createQuery(hql).list();
	}

	public GongYingShang getGongYingShangById(int id) {

		return (GongYingShang)this.getSession().get(GongYingShang.class, id);
	}

	public PageModel getGongYingShangs(int offset) {
		int total=(int)getSession().createQuery("from GongYingShang").list().size();
		List datas=getSession().createQuery("from GongYingShang y order by y.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(GongYingShang gys) {

		this.getSession().save(gys);
	}

	public void update(GongYingShang gys) {
		
		this.getSession().update(gys);
	}

}
