package com.dao;

import java.util.List;

import com.bean.GongYingShang;
import com.util.PageModel;

public interface GongYingShangDAO {
	
	public void save(GongYingShang gys);
	
	public void deleteById(int id);
	
	public GongYingShang getGongYingShangById(int id);
	
	public List getAll(); 
	
	public void update(GongYingShang gys);
	
	public PageModel getGongYingShangs(int offset);
}
