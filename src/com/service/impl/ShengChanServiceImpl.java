package com.service.impl;

import java.util.List;

import com.bean.ShengChan;
import com.dao.ShengChanDAO;
import com.service.ShengChanService;
import com.util.PageModel;

public class ShengChanServiceImpl implements ShengChanService {

	private ShengChanDAO shengChanDao;
	
	public void setShengChanDao(ShengChanDAO shengChanDao) {
		this.shengChanDao = shengChanDao;
	}

	public void deleteById(int id) {
		shengChanDao.deleteById(id);
	}

	public List getAll() {
		return shengChanDao.getAll();
	}

	public ShengChan getShengChanById(int id) {
		return shengChanDao.getShengChanById(id);
	}

	public PageModel getShengChans(int offset) {
		return shengChanDao.getShengChans(offset);
	}

	public void save(ShengChan sc) {

		shengChanDao.save(sc);
	}

	public void update(ShengChan sc) {

		shengChanDao.update(sc);
	}

}
