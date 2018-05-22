package com.service.impl;

import com.bean.Shoukuan;
import com.bean.Tuikuan;
import com.dao.ShoukuanDAO;
import com.dao.TuikuanDAO;
import com.service.TuikuanService;
import com.util.PageModel;

public class TuikuanServiceImpl implements TuikuanService {
	private TuikuanDAO tuikuanDao;
	private ShoukuanDAO shoukuanDao;
	
	public Shoukuan find(String xiaoid) {
		
		return this.shoukuanDao.findbyxiaoid(xiaoid);
	}

	public String finddwr(String xiaoid) {
		Shoukuan shoukuan=this.shoukuanDao.findbyxiaoid(xiaoid);
		if(shoukuan==null){
     		return "此订单不存在退款状态";
		}else{
			return "";
		}
	}

	public void delete(Tuikuan tuikuan) {
		this.tuikuanDao.delete(tuikuan);

	}

	public Tuikuan findById(int id) {
		return this.tuikuanDao.findById(id);
	}

	public PageModel findall(int offset) {
		StringBuffer sb=new StringBuffer();
        sb.append("from Tuikuan order by id desc");
        return this.tuikuanDao.find(sb.toString(), offset);
	}

	public PageModel findstr(Tuikuan t, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Tuikuan where 1=1 ");
		 if((null!=t.getTkuanid())&&(!"".equals(t.getTkuanid()))){
			 sb.append(" and tkuanid like '%").append(t.getTkuanid()).append("%'");
		 }
		 if((null!=t.getShoukuan().getXiaoshou().getXiaoid())&&(!"".equals(t.getShoukuan().getXiaoshou().getXiaoid()))){
			 sb.append(" and shoukuan.xiaoshou.xiaoid like '%").append(t.getShoukuan().getXiaoshou().getXiaoid()).append("%'");
		 }
		 if((null!=t.getTkuantime())&&(!"".equals(t.getTkuantime()))){
			 sb.append(" and tkuantime like '%").append(t.getTkuantime()).append("%'");
		 }
		 if((null!=t.getTkuanren())&&(!"".equals(t.getTkuanren()))){
			 sb.append(" and tkuanren like '%").append(t.getTkuanren()).append("%'");
		 }
		return this.tuikuanDao.find(sb.toString(), offset);
	}

	public void save(Tuikuan tuikuan) {
		this.tuikuanDao.save(tuikuan);

	}
	
	
	public TuikuanDAO getTuikuanDao() {
		return tuikuanDao;
	}

	public void setTuikuanDao(TuikuanDAO tuikuanDao) {
		this.tuikuanDao = tuikuanDao;
	}
	public ShoukuanDAO getShoukuanDao() {
		return shoukuanDao;
	}

	public void setShoukuanDao(ShoukuanDAO shoukuanDao) {
		this.shoukuanDao = shoukuanDao;
	}

	

}
