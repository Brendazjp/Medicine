package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Kucun;
import com.bean.Ruku;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.KucunService;
import com.service.RukuService;
import com.util.PageModel;

public class RukuAction extends ActionSupport {
	private RukuService rukuService;
	private KucunService kucunService;
	private Ruku ruku;
	private Kucun kucun;
	/*
	 *  将对应库存信息显示在添加入库信息页中，跳转到添加入库信息页中
	 */
	public String insert() throws Exception{
		kucun=this.kucunService.findById(kucun.getId());
		ActionContext.getContext().put("kucun", kucun);
		return "insert";
	}
	/*
	 * 保存入库信息，并修改对应库存量（增加）
	 */
	public String save() throws Exception{
		kucun=this.rukuService.findkucun(ruku.getKcid());
		kucun.setShuliang(kucun.getShuliang()+ruku.getRkshuliang());
		this.kucunService.update(kucun);
		this.rukuService.save(ruku);
		return "sud";
		
	}
	/*
	 * 显示所入库信息
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
		         PageModel pm=this.rukuService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
		         return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 显示某条记录的详细信息
	 */
	public String showone() throws Exception{
		ruku=this.rukuService.findById(ruku.getId());
		ActionContext.getContext().put("ruku", ruku);
		return "showone";
	}
	/*
	 * 删除某条入库记录
	 */
	public String delete() throws Exception{
		ruku=this.rukuService.findById(ruku.getId());
		this.rukuService.delete(ruku);
		return "sud";
	}
	/*
	 * 进行一次空跳转，解决路径问题，并将所有仓库信息显示在入库查找页的仓库属性中
	 */
	public String zhuan() throws Exception{
		List list=this.kucunService.showcangku();//查找出所有的仓库信息
		ActionContext.getContext().put("list", list);
		return "zhuan";
	}
	/*
	 * 入库信息查询功能
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
         PageModel pm=this.rukuService.findstr(ruku, offset);
         ActionContext.getContext().put("pm",pm);
         return "show1";
	}
	
	
	
	public RukuService getRukuService() {
		return rukuService;
	}
	public void setRukuService(RukuService rukuService) {
		this.rukuService = rukuService;
	}
	public Ruku getRuku() {
		return ruku;
	}
	public void setRuku(Ruku ruku) {
		this.ruku = ruku;
	}
	public Kucun getKucun() {
		return kucun;
	}
	public void setKucun(Kucun kucun) {
		this.kucun = kucun;
	}
	public KucunService getKucunService() {
		return kucunService;
	}
	public void setKucunService(KucunService kucunService) {
		this.kucunService = kucunService;
	}
	

}
