package com.dao;

import com.bean.Tuikuan;
import com.util.PageModel;

public interface TuikuanDAO {
	public void save(Tuikuan tuikuan);
    public void delete(Tuikuan tuikuan);
    public Tuikuan findById(int id);    
	public PageModel find(String sql,int offset);
	

}
