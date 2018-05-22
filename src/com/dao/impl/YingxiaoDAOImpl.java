package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Yingxiao;
import com.dao.YingxiaoDAO;
import com.util.PageModel;

public class YingxiaoDAOImpl extends HibernateDaoSupport implements YingxiaoDAO {

	public void delete(Yingxiao yingxiao) {
		this.getHibernateTemplate().delete(yingxiao);

	}

	public Yingxiao findById(int id) {
		return (Yingxiao)this.getHibernateTemplate().get(Yingxiao.class, id);
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
		int total=(int)getSession().createQuery("from Yingxiao").list().size();
		List datas=getSession().createQuery("from Yingxiao y order by y.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(Yingxiao yingxiao) {
		this.getHibernateTemplate().save(yingxiao);

	}

	public void update(Yingxiao yingxiao) {
		this.getHibernateTemplate().update(yingxiao);

	}

}
