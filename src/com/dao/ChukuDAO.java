package com.dao;

import com.bean.Chuku;
import com.util.PageModel;

public interface ChukuDAO {
	public void save(Chuku chuku);
	public void delete(Chuku chuku);
    public Chuku findById(int id);    
	public PageModel find(String sql,int offset);

}
