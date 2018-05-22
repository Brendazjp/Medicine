package com.dao;

import com.bean.Yanchan;
import com.util.PageModel;

public interface YanchanDAO {
	public void save(Yanchan yanchan);
	public void update(Yanchan yanchan);
	public void delete(Yanchan yanchan);
	public Yanchan findById(int id);
	public PageModel findall(int offset);
	public PageModel findStr(String sql,int offset);
	public Yanchan find(String sql);

}
