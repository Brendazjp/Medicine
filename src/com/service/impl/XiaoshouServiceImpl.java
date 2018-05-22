package com.service.impl;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

import com.bean.Chanpin;
import com.bean.Kehu;
import com.bean.Xiaoshou;
import com.dao.ChanpinDAO;
import com.dao.KehuDAO;
import com.dao.XiaoshouDAO;
import com.service.XiaoshouService;
import com.util.PageModel;

public class XiaoshouServiceImpl implements XiaoshouService {
	private XiaoshouDAO xiaoshouDao;
	private KehuDAO kehuDao;
	private ChanpinDAO chanpinDao;


	public void delete(Xiaoshou xiaoshou) {

		this.xiaoshouDao.delete(xiaoshou);
	}

	public Xiaoshou findById(int id) {
		
		return this.xiaoshouDao.findById(id);
	}

	public Chanpin findChan(int id) {
		
		return this.chanpinDao.findById(id);
	}

	public Kehu findKehu(String kehuid) {
		return this.kehuDao.findBykeid(kehuid);
	}
	/**
	 * 为DWR服务
	 */
	public String findKehu1(String kehuid) {
		Kehu kehu=this.kehuDao.findBykeid(kehuid);
		if(kehu!=null)
		   {
			   return kehu.getKename();
		   }else
		   {
			   return "客户编号不存在";
		   }
	}

	public void save(Xiaoshou xiaoshou) {
		this.xiaoshouDao.save(xiaoshou);

	}

	public void update(Xiaoshou xiaoshou) {
		this.xiaoshouDao.update(xiaoshou);

	}
	public PageModel findall(int offset){
		String sql="from Xiaoshou x where x.zhuangtai in ('等待审批','通过审批','未通过审批') order by x.id desc";
		return this.xiaoshouDao.find(sql, offset);
	}
	public PageModel findshow(String zhuangtai, int offset) {
		String sql="from Xiaoshou x where x.zhuangtai='"+zhuangtai+"' order by x.id desc";
		return this.xiaoshouDao.find(sql, offset);
	}
	public PageModel find(Xiaoshou x, int offset) {
		StringBuffer sb=new StringBuffer();
		sb.append("from Xiaoshou where 1=1");
		if((null!=x.getXiaoid())&&(!"".equals(x.getXiaoid()))){
		    sb.append(" and xiaoid like '%").append(x.getXiaoid()).append("%'");
		     }
		if((null!=x.getChanpin().getChanname())&&(!"".equals(x.getChanpin().getChanname()))){
			sb.append(" and chanpin.channame like '%").append(x.getChanpin().getChanname()).append("%'");
			 }
		if((null!=x.getXiaotime())&&(!"".equals(x.getXiaotime()))){
			sb.append(" and xiaotime like '%").append(x.getXiaotime()).append("%'");
			 }
		if((null!=x.getKehu().getKename())&&(!"".equals(x.getKehu().getKename()))){
			sb.append(" and kehu.kename like '%").append(x.getKehu().getKename()).append("%'");
			 }
		if((null!=x.getTdtime())&&(!"".equals(x.getTdtime()))){
			sb.append(" and tdtime like '%").append(x.getTdtime()).append("%'");
			 }
		if((null!=x.getFatime())&&(!"".equals(x.getFatime()))){
			sb.append(" and fatime like '%").append(x.getFatime()).append("%'");
			 }
		if((null!=x.getThtime())&&(!"".equals(x.getThtime()))){
			sb.append(" and thtime like '%").append(x.getThtime()).append("%'");
			 }
		if((null!=x.getZhuangtai())&&(!"".equals(x.getZhuangtai()))){
			sb.append(" and zhuangtai like '%").append(x.getZhuangtai()).append("%'");
			 }
		sb.append("order by id desc");
		return this.xiaoshouDao.find(sb.toString(), offset);
	}
	 /*
	  * 销售分析
	  */
	@SuppressWarnings("unchecked")
	public void fenxi(String zhuangtai, int leibie, String year, String month) {
		   String sql=new String();
		   if(leibie==1){
			   if("发货".equals(zhuangtai))
			   {
				   sql="select kehu.shichang.diqu,sum(shuliang) from Xiaoshou where zhuangtai='"+zhuangtai+"' and fatime like '%"+year+"-"+month+"%'group by kehu.shichang.diqu";
			   }
			   if("退货".equals(zhuangtai))
			   {
				   sql="select kehu.shichang.diqu,sum(shuliang) from Xiaoshou where zhuangtai='"+zhuangtai+"' and thtime like '%"+year+"-"+month+"%'group by kehu.shichang.diqu";
			   }
			   if("退单".equals(zhuangtai))
			   {
				   sql="select kehu.shichang.diqu,sum(shuliang) from Xiaoshou where zhuangtai='"+zhuangtai+"' and tdtime like '%"+year+"-"+month+"%'group by kehu.shichang.diqu";
			   }
			   DefaultCategoryDataset dpd=new DefaultCategoryDataset();
			   List list=this.xiaoshouDao.findall(sql);
			   if(null !=list){
			    	for(Iterator it = list.iterator();it.hasNext();){
			    		Object[] arr = (Object[])it.next();
			    		dpd.setValue((Long)arr[1],(String)arr[0],(String)arr[0]);
			    	}
			   }
			
			   JFreeChart chart=ChartFactory.createBarChart3D(year+"年"+month+"月"+"各地区的"+zhuangtai+"情况分析","地区","数量" ,dpd,PlotOrientation.VERTICAL, true, false, false);
			   ChartFrame chartFrame=new ChartFrame("销售分析",chart);
			    chartFrame.pack();
			    chartFrame.setVisible(true);
		   }
		   else{
			   if("发货".equals(zhuangtai))
			   {
				   sql="select chanpin.leixing,sum(shuliang) from Xiaoshou where zhuangtai='"+zhuangtai+"' and fatime like '%"+year+"-"+month+"%'group by chanpin.leixing";
			   }
			   if("退货".equals(zhuangtai))
			   {
				   sql="select chanpin.leixing,sum(shuliang) from Xiaoshou where zhuangtai='"+zhuangtai+"' and thtime like '%"+year+"-"+month+"%'group by chanpin.leixing";
			   }
			   if("退单".equals(zhuangtai))
			   {
				   sql="select chanpin.leixing,sum(shuliang) from Xiaoshou where zhuangtai='"+zhuangtai+"' and tdtime like '%"+year+"-"+month+"%'group by chanpin.leixing";
			   }
			   List list=this.xiaoshouDao.findall(sql);
			   DefaultPieDataset dpd=new DefaultPieDataset();
			   if(null !=list){
			    	for(Iterator it = list.iterator();it.hasNext();){
			    		Object[] arr = (Object[])it.next();
			    		dpd.setValue((String)arr[0],(Long)arr[1]);
			    	}
			   }
			   JFreeChart chart=ChartFactory.createPieChart3D(year+"年"+month+"月"+"各类产品的"+zhuangtai+"情况分析",dpd,true,true,false );
			    ChartFrame chartFrame=new ChartFrame("销售分析",chart);
			    chartFrame.pack();
			    chartFrame.setVisible(true);
			   
		   }
		   
	}
	/*
	 * 计算客户忠诚度
	 */
	public void jszhongcheng() {
		List<Kehu> list = xiaoshouDao.findall("from Kehu where biaozhi = 0");//查询出所有的标志位为0的。
		
		String hql1 = "select count(*) from Xiaoshou where zhuangtai = '发货'";
		String hql2 = "select count(*) from Xiaoshou where zhuangtai = '退单'";
		String hql3 = "select count(*) from Xiaoshou where zhuangtai = '退货'";
		
		long fh = xiaoshouDao.findOnly(hql1);//查询出所有发贷状态的个数
		long td = xiaoshouDao.findOnly(hql2);//查询出所有退单状态的个数
		long th = xiaoshouDao.findOnly(hql3);//查询出所有退货状态的个数
		
		long sum = fh + td + th;//发货，退单，退货等状态的总个数
		
		for(Kehu kh : list) {
			
			hql1 = "select count(*) from Xiaoshou where kehu.id = "+kh.getId()+" and zhuangtai = '发货'";
			hql2 = "select count(*) from Xiaoshou where kehu.id = "+kh.getId()+" and zhuangtai = '退单'";
			hql3 = "select count(*) from Xiaoshou where kehu.id = "+kh.getId()+" and zhuangtai = '退货'";
			
			long fh1 = xiaoshouDao.findOnly(hql1);//查询出当前客户的所有发贷状态的个数
			long td1 = xiaoshouDao.findOnly(hql2);//查询出当前客户的所有退单状态的个数
			long th1 = xiaoshouDao.findOnly(hql3);//查询出当前客户的所有退货状态的个数
			
			long sum1 = fh1 + td1 + th1;//计算出当前客户的发货，退单，退货等状态的总个数
			
			float zc = ((float)fh1/sum1*fh1/fh - (float)td1/sum1*td1/td - (float)th1/sum1 * th1/th)*sum;
			zc = (int)(zc * 100) / (float)100;
			kh.setZhongcheng(zc);
			kehuDao.update(kh);
		}
	}
	
	
	
	
	
	


	public KehuDAO getKehuDao() {
		return kehuDao;
	}

	public void setKehuDao(KehuDAO kehuDao) {
		this.kehuDao = kehuDao;
	}

	public ChanpinDAO getChanpinDao() {
		return chanpinDao;
	}

	public void setChanpinDao(ChanpinDAO chanpinDao) {
		this.chanpinDao = chanpinDao;
	}

	public XiaoshouDAO getXiaoshouDao() {
		return xiaoshouDao;
	}

	public void setXiaoshouDao(XiaoshouDAO xiaoshouDao) {
		this.xiaoshouDao = xiaoshouDao;
	}

	

	

	

}
