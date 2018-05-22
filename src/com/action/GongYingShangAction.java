package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.GongYingShang;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.GongYingShangService;
import com.util.PageModel;

public class GongYingShangAction extends ActionSupport {

	private int id;
	
	private String googid;
	
	private String gonggname;
	
	private String dizhi;
	
	private String lianxiren;
	
	private String liaophone;
	
	private String yinhang;
	
	private String yinhangid;
	
	private GongYingShangService gongYingShangService;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGoogid() {
		return googid;
	}

	public void setGoogid(String googid) {
		this.googid = googid;
	}

	public String getGonggname() {
		return gonggname;
	}

	public void setGonggname(String gonggname) {
		this.gonggname = gonggname;
	}

	public String getDizhi() {
		return dizhi;
	}

	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}

	public String getLianxiren() {
		return lianxiren;
	}

	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}

	public String getLiaophone() {
		return liaophone;
	}

	public void setLiaophone(String liaophone) {
		this.liaophone = liaophone;
	}

	public String getYinhang() {
		return yinhang;
	}

	public void setYinhang(String yinhang) {
		this.yinhang = yinhang;
	}

	public String getYinhangid() {
		return yinhangid;
	}

	public void setYinhangid(String yinhangid) {
		this.yinhangid = yinhangid;
	}

	public GongYingShangService getGongYingShangService() {
		return gongYingShangService;
	}

	public void setGongYingShangService(GongYingShangService gongYingShangService) {
		this.gongYingShangService = gongYingShangService;
	}

	@Override
	public String execute() throws Exception {

		int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset = Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }  
         if(offset<0) {
        	 offset = 0;
         }
         //这里我按照每页显示15条   
         PageModel pm=this.gongYingShangService.getGongYingShangs(offset);
         ActionContext.getContext().put("pm", pm);
		
		return "success";
	}
	
	public String add() {
		
		GongYingShang gys = new GongYingShang();
		gys.setDizhi(dizhi);
		gys.setGonggname(gonggname);
		gys.setGoogid(googid);
		gys.setLianxiren(lianxiren);
		gys.setLiaophone(liaophone);
		gys.setYinhang(yinhang);
		gys.setYinhangid(yinhangid);
		
		gongYingShangService.save(gys);
		
		return "add_success";
	}
	
	public String update() {
		
		GongYingShang gys = new GongYingShang();
		gys.setDizhi(dizhi);
		gys.setGonggname(gonggname);
		gys.setGoogid(googid);
		gys.setLianxiren(lianxiren);
		gys.setLiaophone(liaophone);
		gys.setYinhang(yinhang);
		gys.setYinhangid(yinhangid);
		gys.setId(id);
		
		gongYingShangService.update(gys);
		
		return "update_success";
	}
	
	public String delete() {
		
		gongYingShangService.deleteById(id);
		
		return "delete_success";
	}
	
	public String show() {
		
		GongYingShang gys = gongYingShangService.getGongYingShangById(id);
		
		ActionContext.getContext().put("gys", gys);
		
		return "show_gongyingshang";
	}
	
	public String updateInput() {
		
		GongYingShang gys = gongYingShangService.getGongYingShangById(id);
		
		ActionContext.getContext().put("gys", gys);
		
		return "update_input";
	}
}
