package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Chuku;
import com.bean.Kucun;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ChukuService;
import com.service.KucunService;
import com.util.PageModel;

public class ChukuAction extends ActionSupport {
	private ChukuService chukuService;
	private KucunService kucunService;
	private Chuku chuku;
	private Kucun kucun;
	/*
	 *  将对应库存信息显示在添加出库信息页中，跳转到添加出库信息页中
	 */
	public String insert() throws Exception{
		kucun=this.kucunService.findById(kucun.getId());
		ActionContext.getContext().put("kucun", kucun);
		return "insert";
	}
	/*
	 * 保存出库信息，并修改对应库存量（减少）
	 */
	public String save() throws Exception{
		kucun=this.chukuService.findkucun(chuku.getKcid());
		kucun.setShuliang(kucun.getShuliang()-chuku.getCkshuliang());
		this.kucunService.update(kucun);
		this.chukuService.save(chuku);
		return "sud";
	}
	/*
	 * 显示所有出库信息
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
		         PageModel pm=this.chukuService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
		         return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 显示某条出库记录的详细信息
	 */
	public String showone() throws Exception{
		chuku=this.chukuService.findById(chuku.getId());
		ActionContext.getContext().put("ruku", chuku);
		return "showone";
	}
	/*
	 * 删除某条出库记录
	 */
	public String delete() throws Exception{
		chuku=this.chukuService.findById(chuku.getId());
		this.chukuService.delete(chuku);
		return "sud";
	}
	/*
	 * 进行一次空跳转，解决路径问题，并将所有仓库信息显示在出库查找页的仓库属性中
	 */
	public String zhuan() throws Exception{
		List list=this.kucunService.showcangku();//查找出所有的仓库信息
		ActionContext.getContext().put("list", list);
		return "zhuan";
	}
	/*
	 * 出库信息查询功能
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
         PageModel pm=this.chukuService.findstr(chuku, offset);
         ActionContext.getContext().put("pm",pm);
         return "show1";
	}
	
	
	public ChukuService getChukuService() {
		return chukuService;
	}
	public void setChukuService(ChukuService chukuService) {
		this.chukuService = chukuService;
	}
	public KucunService getKucunService() {
		return kucunService;
	}
	public void setKucunService(KucunService kucunService) {
		this.kucunService = kucunService;
	}
	public Chuku getChuku() {
		return chuku;
	}
	public void setChuku(Chuku chuku) {
		this.chuku = chuku;
	}
	public Kucun getKucun() {
		return kucun;
	}
	public void setKucun(Kucun kucun) {
		this.kucun = kucun;
	}

}
