package com.dao;

import java.util.List;

import com.bean.Cangku;
import com.util.PageModel;

public interface CangkuDAO {
	public void save(Cangku cangku);
    public void update(Cangku cangku);
    public Cangku findById(int id);    
	public PageModel find(String sql,int offset);

}
