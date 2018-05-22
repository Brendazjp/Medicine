package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Kehu;
import com.bean.Shichang;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.KehuService;
import com.service.XiaoshouService;
import com.util.PageModel;

public class KehuAction extends ActionSupport {
	private XiaoshouService xiaoshouService;
	private KehuService kehuService;
	private Shichang shichang;
	private Kehu kehu;
    /**
     * 通过ID查询出对应的市场信息，并转向保存客户信息页
     * @return
     * @throws Exception
     */
	public String showinsert() throws Exception {
		shichang=this.kehuService.findshi(shichang.getId());
        ActionContext.getContext().put("shichang",shichang);
		return "showinsert";
	}
	/**
	 * 保存客户的基本信息
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		kehu.setLiutime("");//当添加新的客户时，要把下线时间为空，他总保存上次添加下线时间的结果，因为是通过对象传递的
		kehu.setLiuyuanyin("");//当添加新的客户时，要把下线原因为空，他总保存上次添加下线原因的结果，因为是通过对象传递的
		shichang=this.kehuService.findshi(shichang.getId());//通过id查询出对应的市场对象
		kehu.setShichang(shichang);  //注入该客户的对应市场对象
		this.kehuService.save(kehu);
		return "sud";
	}
	/**
	 * 显示所有现在的客户信息
	 * @return
	 * @throws Exception
	 */
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==3)||(a==0)||(a==5)||(a==4)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }
		         PageModel pm=this.kehuService.findall(0, offset);   //标志位为0的现有的客户
		         ActionContext.getContext().put("pm", pm);
		         return "show";
    	}else{
    		return "no";
    	}
  	}
	/**
	 * 通过ID查找的某条客户的信息，并转向客户的详细信息页
	 * @return
	 * @throws Exception
	 */
	public String showone() throws Exception{
		kehu=this.kehuService.findById(kehu.getId());
		ActionContext.getContext().put("kehu", kehu);
		return "showone";
	}
	/**
	 * 通过ID查找的某条客户的信息，并转向客户的修改信息页
	 * @return
	 * @throws Exception
	 */
	public String showone1() throws Exception{
		kehu=this.kehuService.findById(kehu.getId());
		ActionContext.getContext().put("kehu", kehu);
		return "showone1";
	}
	/**
	 * 修改客户的基本信息,(并执行客户流失操作的功能)
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception{
		this.kehuService.update(kehu);
		return "sud";
	}
	/**
	 *  通过ID查找的某条客户的信息，并转向客户的执行流失信息页
	 * @return
	 * @throws Exception
	 */
	public String showone2() throws Exception{
		kehu=this.kehuService.findById(kehu.getId());
		ActionContext.getContext().put("kehu", kehu);
		return "showone2";
	}
	/**
	 * 一次action空跳转，解决路径查询问题
	 * @return
	 * @throws Exception
	 */
	public String zhuan() throws Exception{
		return "zhuan";
	}
	/**
	 * 查询现在客户的基本信息
	 * @return
	 * @throws Exception
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
         PageModel pm=this.kehuService.findstr(kehu, offset);   
         ActionContext.getContext().put("pm", pm);
         return "find";
		
	}
	/**
	 * 客户信誉度分析显示
	 * @return
	 * @throws Exception
	 */
	public String xinyushow() throws Exception{
		this.kehuService.xinyushow(kehu.getShichang().getChengshi());
         return "xinyushow";
		
	}
	/**
	 * 客户忠诚度分析显示
	 * @return
	 * @throws Exception
	 */
	public String zhongchengshow() throws Exception{
		this.kehuService.zhongchengshow(kehu.getShichang().getChengshi());
		return "zhongchengshow";
	}
	/**
	 * 计算客户忠诚度
	 * @return
	 * @throws Exception
	 */
	public String jszhongcheng() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==6)){
				xiaoshouService.jszhongcheng();
				return "wanbi";
    	}else{
    		return "no";
    	}
	}
	/**
	 * 对客户信誉度分析的权限控制
	 * @return
	 */
	public String xinzhuan() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==3)||(a==4)||(a==0)){
    		return "xinzhuan";
    	}else{
    		return "no";
    	}
		
	}
	/**
	 * 对客户忠诚度分析的权限控制
	 * @return
	 */
public String zhongzhuan() throws Exception{
	User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
	int a=user.getQuanxian();
	if((a==3)||(a==4)||(a==0)){
		return "zhongzhuan";
	}else{
		return "no";
	}
	}
	
	
	
 
	
	
	
	public Shichang getShichang() {
		return shichang;
	}
	public void setShichang(Shichang shichang) {
		this.shichang = shichang;
	}
	public KehuService getKehuService() {
		return kehuService;
	}
	public void setKehuService(KehuService kehuService) {
		this.kehuService = kehuService;
	}
	public Kehu getKehu() {
		return kehu;
	}
	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}
	public XiaoshouService getXiaoshouService() {
		return xiaoshouService;
	}
	public void setXiaoshouService(XiaoshouService xiaoshouService) {
		this.xiaoshouService = xiaoshouService;
	}

}
