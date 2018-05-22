package com.service;

import com.bean.Wuliao;
import com.util.PageModel;

public interface WuliaoService {
	public void save(Wuliao wuliao);
    public void update(Wuliao wuliao);
    public void delete(Wuliao wuliao);
    public Wuliao findById(int id);    
    public PageModel findall(int offset);

}
