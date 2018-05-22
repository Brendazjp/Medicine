package com.service;

import com.bean.Shichang;
import com.util.PageModel;

public interface ShichangService {
	public void save(Shichang shichang);
    public void update(Shichang shichang);
    public Shichang findById(int id);    
    public PageModel findall(int offset);
	public PageModel findStr(Shichang shichang,int offset);
	public String find(String shichangid);

}
