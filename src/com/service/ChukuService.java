package com.service;

import com.bean.Chuku;
import com.bean.Kucun;
import com.util.PageModel;

public interface ChukuService {
	public Kucun findkucun(String kcid);
	public void save(Chuku chuku);
	public void delete(Chuku chuku);
    public Chuku findById(int id);    
	public PageModel findall(int offset);
	public PageModel findstr(Chuku c,int offset);

}
