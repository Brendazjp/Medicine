package com.service;

import com.bean.Yingxiao;
import com.util.PageModel;

public interface YingxiaoService {
	public void save(Yingxiao yingxiao);
    public void update(Yingxiao yingxiao);
    public void delete(Yingxiao yingxiao);
    public Yingxiao findById(int id);    
    public PageModel findall(int offset);
	public PageModel findStr(Yingxiao yingxiao,int offset);

}
