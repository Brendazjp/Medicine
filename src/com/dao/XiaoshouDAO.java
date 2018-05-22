package com.dao;

import java.util.List;

import com.bean.Xiaoshou;
import com.util.PageModel;

public interface XiaoshouDAO {
	public void save(Xiaoshou xiaoshou);
	public void update(Xiaoshou xiaoshou);
	public void delete(Xiaoshou xiaoshou);
	public Xiaoshou findById(int id);
	public PageModel find(String sql, int offset); 
	public List findall(String sql); 
	public long findOnly(String sql);
	public Xiaoshou findByxiaoid(String sql);

}
