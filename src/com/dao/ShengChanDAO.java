package com.dao;

import java.util.List;

import com.bean.ShengChan;
import com.util.PageModel;

public interface ShengChanDAO {

	public void save(ShengChan sc);
	
	public void deleteById(int id);
	
	public ShengChan getShengChanById(int id);
	
	public List getAll(); 
	
	public void update(ShengChan sc);
	
	public PageModel getShengChans(int offset);
}
