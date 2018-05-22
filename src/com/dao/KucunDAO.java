package com.dao;

import com.bean.Kucun;
import com.util.PageModel;

public interface KucunDAO {
	public void save(Kucun kucun);
	public void update(Kucun kucun);
	public void delete(Kucun kucun);
	public Kucun findById(int id);
	public PageModel find(String sql,int offset);
	public Kucun findByKcid(String sql);

}
