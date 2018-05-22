package com.service.impl;

import com.bean.Cangku;
import com.bean.Chanpin;
import com.dao.CangkuDAO;
import com.service.CangkuService;
import com.util.PageModel;

public class CangkuServiceImpl implements CangkuService {
	private CangkuDAO cangkuDao;

	public CangkuDAO getCangkuDao() {
		return cangkuDao;
	}

	public void setCangkuDao(CangkuDAO cangkuDao) {
		this.cangkuDao = cangkuDao;
	}

	public Cangku findById(int id) {
		return this.cangkuDao.findById(id);
	}

	public PageModel findall(int offset) {
		StringBuffer sb=new StringBuffer();
		sb.append("from Cangku order by id desc");
		return this.cangkuDao.find(sb.toString(), offset);
	}
	
	public void save(Cangku cangku) {
		this.cangkuDao.save(cangku);

	}

	public void update(Cangku cangku) {

		this.cangkuDao.update(cangku);
	}

}
