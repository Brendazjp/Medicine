package com.dao;

import com.bean.Jingzheng;
import com.util.PageModel;

public interface JingzhengDAO {
	public void save(Jingzheng jingzheng);
    public void update(Jingzheng jingzheng);
    public void delete(Jingzheng jingzheng);
    public Jingzheng findById(int id);    
    public PageModel findall(int offset);
	public PageModel findStr(String sql,int offset);
	public Jingzheng find(String sql);

}
