package com.dao;

import com.bean.Caigou;
import com.bean.Wuliao;
import com.util.PageModel;

public interface CaigouDAO {
	public void save(Caigou caigou);
    public void update(Caigou caigou);
    public void delete(Caigou caigou);
    public Caigou findById(int id);    
    public PageModel findall(int offset);

}
