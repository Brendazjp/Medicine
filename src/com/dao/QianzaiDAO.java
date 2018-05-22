package com.dao;

import com.bean.Qianzai;
import com.util.PageModel;

public interface QianzaiDAO {
	public void save(Qianzai qianzai);
	public void update(Qianzai qianzai);
	public void delete(Qianzai qianzai);
	public Qianzai findById(int id);
	public PageModel find(String sql,int offset);
	public Qianzai find(String sql);
	

}
