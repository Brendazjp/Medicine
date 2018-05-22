package com.bean;

public class Ruku {
	private int id;
	private String rkid;       //入库编号
	private String kcid;       //库存编号
	private String channame;   //产品名称
	private String ckname;     //仓库名称
	private String rkleixing;  //入库类型
	private String beizhu;     //备注（退货单号）
	private int rkshuliang;    //入库数量
	private String rktime;     //入库时间
	private String shren;      //送货方经手人
	private String ckren;      //仓库方经手人
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRkid() {
		return rkid;
	}
	public void setRkid(String rkid) {
		this.rkid = rkid;
	}
	public String getKcid() {
		return kcid;
	}
	public void setKcid(String kcid) {
		this.kcid = kcid;
	}
	public String getChanname() {
		return channame;
	}
	public void setChanname(String channame) {
		this.channame = channame;
	}
	public String getCkname() {
		return ckname;
	}
	public void setCkname(String ckname) {
		this.ckname = ckname;
	}
	public String getRkleixing() {
		return rkleixing;
	}
	public void setRkleixing(String rkleixing) {
		this.rkleixing = rkleixing;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public int getRkshuliang() {
		return rkshuliang;
	}
	public void setRkshuliang(int rkshuliang) {
		this.rkshuliang = rkshuliang;
	}
	public String getRktime() {
		return rktime;
	}
	public void setRktime(String rktime) {
		this.rktime = rktime;
	}
	public String getShren() {
		return shren;
	}
	public void setShren(String shren) {
		this.shren = shren;
	}
	public String getCkren() {
		return ckren;
	}
	public void setCkren(String ckren) {
		this.ckren = ckren;
	}

}
