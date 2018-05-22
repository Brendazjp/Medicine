package com.service;

import com.bean.Chanpin;
import com.bean.Kehu;
import com.bean.Xiaoshou;
import com.util.PageModel;

public interface XiaoshouService {
	public void save(Xiaoshou xiaoshou);
	public void update(Xiaoshou xiaoshou);
	public void delete(Xiaoshou xiaoshou);
	public Xiaoshou findById(int id);
	public Chanpin findChan(int id);
	public Kehu findKehu(String kehuid);
	public String findKehu1(String kehuid);
	public PageModel findall(int offset);
	public PageModel findshow(String zhuangtai,int offset);
	public PageModel find(Xiaoshou x,int offset);
	public void fenxi(String zhuangtai,int leibie,String year,String month);
	public void jszhongcheng();

}
