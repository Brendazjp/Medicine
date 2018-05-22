package com.service;

import com.bean.Jingzheng;
import com.util.PageModel;

public interface JingzhengService {
	public void save(Jingzheng jingzheng);
    public void update(Jingzheng jingzheng);
    public void delete(Jingzheng jingzheng);
    public Jingzheng findById(int id);    
    public PageModel findall(int offset);
	public PageModel findStr(Jingzheng jingzheng,int offset);
	public String find(String jingid);


}
