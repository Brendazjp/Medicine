package com.service;

import com.bean.Cangku;
import com.bean.Chanpin;
import com.util.PageModel;

public interface CangkuService {
	public void save(Cangku cangku);
	public void update(Cangku cangku);
	public Cangku findById(int id);
	public PageModel findall(int offset); 
	

}
