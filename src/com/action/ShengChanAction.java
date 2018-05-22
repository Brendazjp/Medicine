package com.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.ShengChan;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ShengChanService;
import com.util.PageModel;

public class ShengChanAction extends ActionSupport {

	private int id;
	
	private String shengid;
	
	private String chanid;
	
	private Date katime;
	
	private Date jiaotime;
	
	private int shouliang;
	
	private String chejian;
	
	private ShengChanService shengChanService;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShengid() {
		return shengid;
	}

	public void setShengid(String shengid) {
		this.shengid = shengid;
	}

	public String getChanid() {
		return chanid;
	}

	public void setChanid(String chanid) {
		this.chanid = chanid;
	}

	public Date getKatime() {
		return katime;
	}

	public void setKatime(Date katime) {
		this.katime = katime;
	}

	public Date getJiaotime() {
		return jiaotime;
	}

	public void setJiaotime(Date jiaotime) {
		this.jiaotime = jiaotime;
	}

	public int getShouliang() {
		return shouliang;
	}

	public void setShouliang(int shouliang) {
		this.shouliang = shouliang;
	}

	public String getChejian() {
		return chejian;
	}

	public void setChejian(String chejian) {
		this.chejian = chejian;
	}

	public ShengChanService getShengChanService() {
		return shengChanService;
	}

	public void setShengChanService(ShengChanService shengChanService) {
		this.shengChanService = shengChanService;
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
         PageModel pm=this.shengChanService.getShengChans(offset);
         ActionContext.getContext().put("pm", pm);
		
		return "success";
	}
	
	public String add() {
		
		ShengChan sc = new ShengChan();
		sc.setChanid(chanid);
		sc.setChejian(chejian);
		sc.setJiaotime(jiaotime);
		sc.setKatime(katime);
		sc.setShengid(shengid);
		sc.setShouliang(shouliang);
		
		shengChanService.save(sc);
		
		return "add_success";
	}
	
	public String delete() {
		
		shengChanService.deleteById(id);
		
		return "delete_success";
	}
	
	public String updateInput() {
		
		ShengChan sc = shengChanService.getShengChanById(id);
		
		ActionContext.getContext().put("sc", sc);
		
		return "update_input";
	}
	
	public String update() {
	
		ShengChan sc = new ShengChan();
		sc.setId(id);
		sc.setChanid(chanid);
		sc.setChejian(chejian);
		sc.setJiaotime(jiaotime);
		sc.setKatime(katime);
		sc.setShengid(shengid);
		sc.setShouliang(shouliang);
		
		shengChanService.update(sc);
		
		return "update_success";
	}
	
	public String show() {
		
		ShengChan sc = shengChanService.getShengChanById(id);
		
		ActionContext.getContext().put("sc", sc);
		
		return "show_shengchan";
	}
	
}
