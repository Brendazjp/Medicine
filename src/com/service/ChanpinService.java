package com.service;

import com.bean.Chanpin;
import com.util.PageModel;

public interface ChanpinService {
	public void save(Chanpin chanpin);
	public void update(Chanpin chanpin);
	public Chanpin findById(int id);
	public PageModel findall(int biaozhi, int offset); 
	public PageModel findstr(Chanpin chanpin, int offset);
	public String find(String chanid);

}
