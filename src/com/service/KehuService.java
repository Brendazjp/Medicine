package com.service;

import java.util.Map;

import com.bean.Kehu;
import com.bean.Shichang;
import com.util.PageModel;

public interface KehuService {
	public void save(Kehu kehu);
	public void update(Kehu kehu);
	public Shichang findshi(int id);
	public Kehu findById(int id);
	public PageModel findall(int biaozhi, int offset); 
	public PageModel findstr(Kehu k, int offset);
	public void xinyushow(String chengshi);
	public void zhongchengshow(String chengshi);
	public Map getChildren(String diqu);
	public Kehu findbykeid(String kehuid);
	public String find(String kehuid);
	

}
