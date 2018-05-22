package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Wuliao;
import com.dao.WuliaoDAO;
import com.util.PageModel;

public class WuliaoDAOImpl extends HibernateDaoSupport implements WuliaoDAO {

	public void delete(Wuliao wuliao) {
		this.getHibernateTemplate().delete(wuliao);

	}

	public Wuliao findById(int id) {
		return (Wuliao)this.getHibernateTemplate().get(Wuliao.class, id);
	}


	public PageModel findall(int offset) {
		int total=(int)getSession().createQuery("from Wuliao").list().size();
		List datas=getSession().createQuery("from Wuliao y order by y.id desc")
		                       .setFirstResult(offset)
		                       .setMaxResults(15)
		                       .list();
		PageModel pm=new PageModel();
		pm.setTotal(total);
		pm.setDatas(datas);
		return pm;
	}

	public void save(Wuliao wuliao) {
		this.getHibernateTemplate().save(wuliao);

	}

	public void update(Wuliao wuliao) {
		this.getHibernateTemplate().update(wuliao);

	}

}
