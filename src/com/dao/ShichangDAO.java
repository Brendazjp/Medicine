package com.dao;

import java.util.List;

import com.bean.Shichang;
import com.util.PageModel;

public interface ShichangDAO {
	public void save(Shichang shichang);
    public void update(Shichang shichang);
    public Shichang findById(int id);    
    public PageModel findall(int offset);
	public PageModel findStr(String sql,int offset);
	public List findChengShi(String hql);
	public Shichang find(String sql);

}
