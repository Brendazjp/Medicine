package com.service.impl;

import com.bean.Wuliao;
import com.dao.WuliaoDAO;
import com.service.WuliaoService;
import com.util.PageModel;

public class WuliaoServiceImpl implements WuliaoService {
	public WuliaoDAO wuliaoDao;

	public WuliaoDAO getWuliaoDao() {
		return wuliaoDao;
	}

	public void setWuliaoDao(WuliaoDAO wuliaoDao) {
		this.wuliaoDao = wuliaoDao;
	}

	public void delete(Wuliao wuliao) {
		this.wuliaoDao.delete(wuliao);

	}

	public Wuliao findById(int id) {
		return this.wuliaoDao.findById(id);
	}

	public PageModel findall(int offset) {
		return this.wuliaoDao.findall(offset);
	}

	public void save(Wuliao wuliao) {
		this.wuliaoDao.save(wuliao);

	}

	public void update(Wuliao wuliao) {
	    this.wuliaoDao.update(wuliao);

	}

}
