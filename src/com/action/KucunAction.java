package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Chanpin;
import com.bean.Kucun;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.KucunService;
import com.util.PageModel;

public class KucunAction extends ActionSupport {
	private KucunService kucunService;
	private Kucun kucun;
	/*
	 * 调用添加库存信息页，查找出所有的仓库，并将显示在增加库存信息页中
	 */
	public String insert() throws Exception {
		List list=this.kucunService.showcangku();//查找出所有的仓库信息
		ActionContext.getContext().put("list",list);
		return "insert";
	}
	/*
	 * 保存库存信息
	 */
	public String save() throws Exception {
		Chanpin cp=this.kucunService.findchanpin(kucun.getChanname());
		kucun.setChanname(cp.getChanname());//通过产品编号查找出产品名称，将产品名称存入数据库中
		this.kucunService.save(kucun);
		return "sud";
	}
	/*
	 * 显示所库存信息
	 */
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==2)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }  
		         PageModel pm=this.kucunService.findall(offset);
		         ActionContext.getContext().put("pm",pm);
				return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 将某条库存信息显示在库存信息页中
	 */
	public String showone() throws Exception{
	    kucun=this.kucunService.findById(kucun.getId());
	    ActionContext.getContext().put("kucun",kucun);
	    List list=this.kucunService.showcangku();//查找出所有的仓库信息
		ActionContext.getContext().put("list",list);
		return "showone";
	}
	/*
	 * 修改某条库存信息
	 */
	public String update() throws Exception{
		this.kucunService.update(kucun);
		return "sud";
	}
	/*
	 * 删除某条库存信息
	 */
	public String delete() throws Exception{
		kucun=this.kucunService.findById(kucun.getId());
		this.kucunService.delete(kucun);
		return "sud";
	}
	/*
	 * 进行一次空跳转，解决路径问题，并将所有仓库信息显示在库存查找页的仓库属性中
	 */
	public String zhuan() throws Exception{
		List list=this.kucunService.showcangku();//查找出所有的仓库信息
		ActionContext.getContext().put("list", list);
		return "zhuan";
	}
	/*
	 * 库存查询
	 */
	public String find() throws Exception{
		int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset = Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }   
         if(offset<0){
    		 offset=0;
    	 }  
         PageModel pm=this.kucunService.findstr(kucun, offset);
         ActionContext.getContext().put("pm",pm);
         return "show1";
		
	}
	/*
	 * 显示库存预警信息
	 */
	public String yujing() throws Exception{
		int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset = Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }   
         if(offset<0){
    		 offset=0;
    	 }  
         PageModel pm=this.kucunService.yujing(offset);
         ActionContext.getContext().put("pm",pm);
         return "yujing";
		
	}
	
	
	
	public KucunService getKucunService() {
		return kucunService;
	}
	public void setKucunService(KucunService kucunService) {
		this.kucunService = kucunService;
	}
	public Kucun getKucun() {
		return kucun;
	}
	public void setKucun(Kucun kucun) {
		this.kucun = kucun;
	}

}
