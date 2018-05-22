package com.dao;

import com.bean.Ruku;
import com.util.PageModel;

public interface RukuDAO {
	public void save(Ruku ruku);
	public void delete(Ruku ruku);
    public Ruku findById(int id);    
	public PageModel find(String sql,int offset);

}
