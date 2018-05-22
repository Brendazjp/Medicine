package com.service;

import java.util.List;

import com.bean.Chanpin;
import com.bean.Kucun;
import com.util.PageModel;

public interface KucunService {
	public void save(Kucun kucun);
	public void update(Kucun kucun);
	public void delete(Kucun kucun);
	public Kucun findById(int id);
	public PageModel findall(int offset);
	public PageModel yujing(int offset);
	public PageModel findstr(Kucun kucun,int offset);
	public List showcangku();
	public Chanpin findchanpin(String chanid);
	public String findchanpin1(String chanid);

}
