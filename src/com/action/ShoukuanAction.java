package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Kehu;
import com.bean.Shoukuan;
import com.bean.User;
import com.bean.Xiaoshou;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.KehuService;
import com.service.ShoukuanService;
import com.util.PageModel;

public class ShoukuanAction extends ActionSupport {
	private ShoukuanService shoukuanService;
	private KehuService kehuService;
	private Shoukuan shoukuan;
	private String xiaoid;
	/*
	 * 保存收款信息，保存前，先要将对应的订单查询出来，还有要修改客户的信誉度
	 */
	public String save() throws Exception {
		Xiaoshou xiaoshou=this.shoukuanService.find(xiaoid);//通过订单编号查询出对应的订单信息
		
		Kehu kehu=this.kehuService.findbykeid(xiaoshou.getKehu().getKehuid());//查询出对应的客户
		kehu.setManyi(kehu.getManyi()+shoukuan.getXinyupf());//修改对应客户信誉度
		this.kehuService.update(kehu);//保存修改对应客户
		
		shoukuan.setXiaoshou(xiaoshou);//把对应的销售记录注入到收款的销售属性中
	    this.shoukuanService.save(shoukuan);
		return "sud";
	}
	/*
	 * 显示所有的收款信息
	 */
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==4)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }
		         PageModel pm=this.shoukuanService.findall(offset);
		         ActionContext.getContext().put("pm",pm);
		         return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 显示某条收款记录的详细信息
	 */
	public String showone() throws Exception{
		shoukuan=this.shoukuanService.findById(shoukuan.getId());
		ActionContext.getContext().put("shoukuan", shoukuan);
			return "showone";
	}
	/*
	 * 删除某条收款记录
	 */
	public String delete() throws Exception{
		shoukuan=this.shoukuanService.findById(shoukuan.getId());
		this.shoukuanService.delete(shoukuan);
		return "sud";
	}
	/*
	 * 执行一次空跳转，跳到查询页
	 */
	public String zhuan() throws Exception{
		return "zhuan";
	}
	/*
	 * 查询收款信息
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
         PageModel pm=this.shoukuanService.findStr(shoukuan, offset);
         ActionContext.getContext().put("pm",pm);
         return "find";
	}
	
	
	

	public String getXiaoid() {
		return xiaoid;
	}

	public void setXiaoid(String xiaoid) {
		this.xiaoid = xiaoid;
	}

	public Shoukuan getShoukuan() {
		return shoukuan;
	}

	public void setShoukuan(Shoukuan shoukuan) {
		this.shoukuan = shoukuan;
	}

	public ShoukuanService getShoukuanService() {
		return shoukuanService;
	}

	public void setShoukuanService(ShoukuanService shoukuanService) {
		this.shoukuanService = shoukuanService;
	}

	public KehuService getKehuService() {
		return kehuService;
	}

	public void setKehuService(KehuService kehuService) {
		this.kehuService = kehuService;
	}

}
