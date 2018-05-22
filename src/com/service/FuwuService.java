package com.service;

import com.bean.Fuwu;
import com.bean.Kehu;
import com.util.PageModel;

public interface FuwuService {
	public void save(Fuwu fuwu);
	public void update(Fuwu fuwu);
	public void delete(Fuwu fuwu);
	public Kehu findke(int id);
	public Fuwu findById(int id);
	public PageModel findall(int fuleibei, int offset); 
	public PageModel findstr(Fuwu f, int offset);
}
