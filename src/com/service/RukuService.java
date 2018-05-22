package com.service;

import com.bean.Kucun;
import com.bean.Ruku;
import com.util.PageModel;

public interface RukuService {
	public Kucun findkucun(String kcid);
	public void save(Ruku ruku);
	public void delete(Ruku ruku);
    public Ruku findById(int id);    
	public PageModel findall(int offset);
	public PageModel findstr(Ruku r,int offset);

}
