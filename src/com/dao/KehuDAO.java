package com.dao;

import java.util.List;

import com.bean.Kehu;
import com.util.PageModel;

public interface KehuDAO {
	public void save(Kehu kehu);
	public void update(Kehu kehu);
	public Kehu findById(int id);
	public PageModel find(String sql, int offset);
	public List findBydu(String sql);
	public Kehu findBykeid(String kehuid);

}
