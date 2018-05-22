package com.service;

import com.bean.Caigou;
import com.util.PageModel;

public interface CaigouService {
	public void save(Caigou caigou);
    public void update(Caigou caigou);
    public void delete(Caigou caigou);
    public Caigou findById(int id);    
    public PageModel findall(int offset);


}
