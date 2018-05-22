package com.service.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

import com.bean.Chanpin;
import com.bean.Kehu;
import com.bean.Shichang;
import com.dao.KehuDAO;
import com.dao.ShichangDAO;
import com.service.KehuService;
import com.util.PageModel;

public class KehuServiceImpl implements KehuService {
	private KehuDAO kehuDao;
	private ShichangDAO shichangDao;
 
	public Shichang findshi(int id)
	{
		return this.shichangDao.findById(id);
	}
	public Kehu findById(int id) {
		
		return this.kehuDao.findById(id);
	}

	public PageModel findall(int biaozhi, int offset) {
		String sql="from Kehu k where k.biaozhi="+biaozhi+" order by k.id desc";
		return this.kehuDao.find(sql, offset);
	}

	public PageModel findstr(Kehu k, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Kehu where 1=1 ");
		 if((null!=k.getShichang().getShichangid())&&(!"".equals(k.getShichang().getShichangid()))){
			 sb.append(" and shichang.shichangid like '%").append(k.getShichang().getShichangid()).append("%'");
		 }
		 if((null!=k.getShichang().getChengshi())&&(!"".equals(k.getShichang().getChengshi()))){
			 sb.append(" and shichang.chengshi like '%").append(k.getShichang().getChengshi()).append("%'");
		 }
		 if((null!=k.getKehuid())&&(!"".equals(k.getKehuid()))){
			 sb.append(" and kehuid like '%").append(k.getKehuid()).append("%'");
		 }
		 if((null!=k.getKename())&&(!"".equals(k.getKename()))){
			 sb.append(" and kename like '%").append(k.getKename()).append("%'");
		 }
		 if((null!=k.getXingzhi())&&(!"".equals(k.getXingzhi()))){
			 sb.append(" and xingzhi like '%").append(k.getXingzhi()).append("%'");
		 }
		 if((null!=k.getLeixing())&&(!"".equals(k.getLeixing()))){
			 sb.append(" and leixing like '%").append(k.getLeixing()).append("%'");
		 }
		 if((null!=k.getJilutime())&&(!"".equals(k.getJilutime()))){
			 sb.append(" and jilutime like '%").append(k.getJilutime()).append("%'");
		 }
		 if((null!=k.getGongphone())&&(!"".equals(k.getGongphone()))){
			 sb.append(" and gongphone like '%").append(k.getGongphone()).append("%'");
		 }
		 if((null!=k.getChuanzheng())&&(!"".equals(k.getChuanzheng()))){
			 sb.append(" and chuanzheng like '%").append(k.getChuanzheng()).append("%'");
		 }
		 if((null!=k.getYoubian())&&(!"".equals(k.getYoubian()))){
			 sb.append(" and youbian like '%").append(k.getYoubian()).append("%'");
		 }
		 if((null!=k.getLianname())&&(!"".equals(k.getLianname()))){
			 sb.append(" and lianname like '%").append(k.getLianname()).append("%'");
		 }
		 if((null!=k.getLianphone())&&(!"".equals(k.getLianphone()))){
			 sb.append(" and lianhone like '%").append(k.getLianphone()).append("%'");
		 }
		 if((null!=k.getLiutime())&&(!"".equals(k.getLiutime()))){
			 sb.append(" and liutime like '%").append(k.getLiutime()).append("%'");
		 }
		 if((null!=(Integer)k.getBiaozhi())&&(!"".equals(k.getBiaozhi()))){
			 sb.append(" and biaozhi like '%").append(k.getBiaozhi()).append("%'");
		 }
		 return (PageModel)this.kehuDao.find(sb.toString(), offset);
	}

	public void save(Kehu kehu) {

		this.kehuDao.save(kehu);
	}

	public void update(Kehu kehu) {
		this.kehuDao.update(kehu);

	}
	/**
	 * 通过地区查询所含城市（这个方法是通过DWR技术调用的）
	 */
	public Map getChildren(String diqu){
		Map map = new HashMap();
		List list = this.shichangDao.findChengShi("from Shichang where diqu = '"+diqu+"'");
		if(null != list ){
			for(Iterator it = list.iterator();it.hasNext();){
				Shichang sc = (Shichang)it.next();
				map.put(sc.getChengshi(), sc.getChengshi());
			}
		}
		return map;
	}
	
	public void xinyushow(String chengshi)
	{
		DefaultCategoryDataset dpd=new DefaultCategoryDataset();
		List list=this.kehuDao.findBydu("from Kehu where shichang.chengshi = '"+chengshi+"'and biaozhi=0");
	    if(null !=list){
		    	for(Iterator it = list.iterator();it.hasNext();){
		    		Kehu k=(Kehu)it.next();
		    		dpd.setValue(k.getManyi(),k.getKename(),k.getKehuid());
		    	}
	    }
		
		JFreeChart chart=ChartFactory.createBarChart3D(chengshi+"地区客户信誉度分析","客户编号","客户信誉度" ,dpd,PlotOrientation.VERTICAL, true, false, false);
		ChartFrame chartFrame=new ChartFrame("客户信誉度分析",chart);
		    chartFrame.pack();
		    chartFrame.setVisible(true);
		
	}
	
	public void zhongchengshow(String chengshi) {
		DefaultCategoryDataset dpd=new DefaultCategoryDataset();
		List list=this.kehuDao.findBydu("from Kehu where shichang.chengshi = '"+chengshi+"'and biaozhi=0");
	    if(null !=list){
		    	for(Iterator it = list.iterator();it.hasNext();){
		    		Kehu k=(Kehu)it.next();
		    		float zc = ((int)k.getZhongcheng() * 100) / (float)100;
		    		dpd.setValue(zc,k.getKename(),k.getKehuid());
		    	}
	    }
		
		JFreeChart chart=ChartFactory.createBarChart3D(chengshi+"地区客户忠诚度分析","客户编号","客户忠诚度" ,dpd,PlotOrientation.VERTICAL, true, false, false);
		ChartFrame chartFrame=new ChartFrame("客户忠诚度分析",chart);
		    chartFrame.pack();
		    chartFrame.setVisible(true);
		
	}
	public Kehu findbykeid(String kehuid) {
		return this.kehuDao.findBykeid(kehuid);
	}
	public String find(String kehuid) {
		Kehu kehu=this.kehuDao.findBykeid(kehuid);
		if(kehu==null){
			return "";
		}else{
			return "客户编号已存在";
		}
	}
	
	
	
	

	public ShichangDAO getShichangDao() {
		return shichangDao;
	}

	public void setShichangDao(ShichangDAO shichangDao) {
		this.shichangDao = shichangDao;
	}

	public KehuDAO getKehuDao() {
		return kehuDao;
	}

	public void setKehuDao(KehuDAO kehuDao) {
		this.kehuDao = kehuDao;
	}
	
	
	
}
