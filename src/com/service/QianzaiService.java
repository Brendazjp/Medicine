package com.service;

import com.bean.Qianzai;
import com.util.PageModel;

public interface QianzaiService {
	public void save(Qianzai qianzai);
	public void update(Qianzai qianzai);
	public void delete(Qianzai qianzai);
	public Qianzai findById(int id);
	public PageModel findall(int offset);
	public PageModel findStr(Qianzai q,int offset);
	public String find(String qianid);

}
