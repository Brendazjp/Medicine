package com.service.impl;

import java.util.List;

import com.bean.GongYingShang;
import com.dao.GongYingShangDAO;
import com.service.GongYingShangService;
import com.util.PageModel;

public class GongYingShangServiceImpl implements GongYingShangService {

	private GongYingShangDAO gongYingShangDao;
	
	public void setGongYingShangDao(GongYingShangDAO gongYingShangDao) {
		this.gongYingShangDao = gongYingShangDao;
	}

	public void deleteById(int id) {

		gongYingShangDao.deleteById(id);
	}

	public List getAll() {

		return gongYingShangDao.getAll();
	}

	public GongYingShang getGongYingShangById(int id) {

		return gongYingShangDao.getGongYingShangById(id);
	}

	public PageModel getGongYingShangs(int offset) {

		return gongYingShangDao.getGongYingShangs(offset);
	}

	public void save(GongYingShang gys) {

		gongYingShangDao.save(gys);
	}

	public void update(GongYingShang gys) {

		gongYingShangDao.update(gys);
	}

}
