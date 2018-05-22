package com.dao;

import com.bean.Wuliao;
import com.util.PageModel;

public interface WuliaoDAO {
	public void save(Wuliao wuliao);
    public void update(Wuliao wuliao);
    public void delete(Wuliao wuliao);
    public Wuliao findById(int id);    
    public PageModel findall(int offset);

}
