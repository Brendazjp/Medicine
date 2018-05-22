package com.service;

import java.util.List;

import com.bean.GongYingShang;
import com.util.PageModel;

public interface GongYingShangService {
	
	public void save(GongYingShang gys);
	
	public void deleteById(int id);
	
	public GongYingShang getGongYingShangById(int id);
	
	public List getAll(); 
	
	public void update(GongYingShang gys);
	
	public PageModel getGongYingShangs(int offset);
}
