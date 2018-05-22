package com.service;

import com.bean.Shoukuan;
import com.bean.Tuikuan;
import com.util.PageModel;

public interface TuikuanService {
	public void save(Tuikuan tuikuan);
    public void delete(Tuikuan tuikuan);
    public Tuikuan findById(int id);    
	public PageModel findall(int offset);
	public PageModel findstr(Tuikuan t,int offset);
	public String finddwr(String xiaoid);
	public Shoukuan find(String xiaoid);
}
