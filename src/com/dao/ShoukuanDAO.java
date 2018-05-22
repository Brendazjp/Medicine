package com.dao;

import com.bean.Shoukuan;
import com.util.PageModel;

public interface ShoukuanDAO {
	public void save(Shoukuan shoukuan);
    public void update(Shoukuan shoukuan);
    public void delete(Shoukuan shoukuan);
    public Shoukuan findById(int id);    
	public PageModel find(String sql,int offset);
	public Shoukuan findbyxiaoid(String xiaoid);

}
