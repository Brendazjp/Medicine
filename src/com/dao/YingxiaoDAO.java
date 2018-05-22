package com.dao;

import com.bean.Yingxiao;
import com.util.PageModel;

public interface YingxiaoDAO {
	public void save(Yingxiao yingxiao);
    public void update(Yingxiao yingxiao);
    public void delete(Yingxiao yingxiao);
    public Yingxiao findById(int id);    
    public PageModel findall(int offset);
	public PageModel findStr(String sql,int offset);

}
