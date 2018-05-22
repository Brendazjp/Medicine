package com.dao;

import com.bean.Chanpin;
import com.util.PageModel;

public interface ChanpinDAO {
	public void save(Chanpin chanpin);
	public void update(Chanpin chanpin);
	public Chanpin findById(int id);
	public PageModel findall(String sql, int offset);
	public Chanpin findByChanid(String sql);
}

