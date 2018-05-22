package com.service;

import com.bean.Yanchan;
import com.util.PageModel;

public interface YanchanService {
	public void save(Yanchan yanchan);
	public void update(Yanchan yanchan);
	public void delete(Yanchan yanchan);
	public Yanchan findById(int id);
	public PageModel findall(int offset); 
	public PageModel findstr(Yanchan y,int offset);
	public String find(String yanchanid);


}
