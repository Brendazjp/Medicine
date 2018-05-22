package com.dao;

import com.bean.Fuwu;
import com.util.PageModel;

public interface FuwuDAO {
	public void save(Fuwu fuwu);
	public void update(Fuwu fuwu);
	public void delete(Fuwu fuwu);
	public Fuwu findById(int id);
	public PageModel find(String sql, int offset);

}
