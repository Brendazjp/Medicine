package com.service;

import com.bean.Shoukuan;
import com.bean.Xiaoshou;
import com.util.PageModel;

public interface ShoukuanService {
	public void save(Shoukuan shoukuan);
    public void delete(Shoukuan shoukuan);
    public Shoukuan findById(int id);    
	public PageModel findall(int offset);
	public PageModel findStr(Shoukuan s,int offset);
	public Xiaoshou finddwr(String xiaoid);
	public Xiaoshou find(String xiaoid);
	public void updatexinyu(Xiaoshou xiaoshou);


}
