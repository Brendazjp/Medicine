package com.service.impl;

import com.bean.Caigou;
import com.dao.CaigouDAO;
import com.service.CaigouService;
import com.util.PageModel;

public class CaigouServiceImpl implements CaigouService {
	private CaigouDAO caigouDao;

	public CaigouDAO getCaigouDao() {
		return caigouDao;
	}

	public void setCaigouDao(CaigouDAO caigouDao) {
		this.caigouDao = caigouDao;
	}

	public void delete(Caigou caigou) {
		this.caigouDao.delete(caigou);

	}

	public Caigou findById(int id) {
		return this.caigouDao.findById(id);
	}

	public PageModel findall(int offset) {
		return this.caigouDao.findall(offset);
	}

	public void save(Caigou caigou) {
		this.caigouDao.save(caigou);

	}

	public void update(Caigou caigou) {
		this.caigouDao.update(caigou);
	}

}
