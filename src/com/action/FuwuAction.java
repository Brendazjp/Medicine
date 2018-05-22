package com.action;

import com.bean.Fuwu;
import com.bean.Kehu;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.FuwuService;

public class FuwuAction extends ActionSupport {
	private FuwuService fuwuService;
	private Fuwu fuwu;
	private Kehu kehu;
	public Kehu getKehu() {
		return kehu;
	}
	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}
	public FuwuService getFuwuService() {
		return fuwuService;
	}
	public void setFuwuService(FuwuService fuwuService) {
		this.fuwuService = fuwuService;
	}
	public Fuwu getFuwu() {
		return fuwu;
	}
	public void setFuwu(Fuwu fuwu) {
		this.fuwu = fuwu;
	}
	public String showinsert() throws Exception {
		kehu=this.fuwuService.findke(kehu.getId());
        ActionContext.getContext().put("kehu",kehu);
		return "showinsert";
	}
	public String save() throws Exception{
		kehu=this.fuwuService.findke(kehu.getId());
		fuwu.setKehu(kehu);
		this.fuwuService.save(fuwu);
		return "save";
		
	}

}
