package com.bean;

public class Chuku {
	private int id;
	private String ckid;       //出库编号
	private String kcid;       //库存编号
	private String channame;   //产品名称
	private String ckname;     //仓库名称
	private String ckleixing;  //出库类型
	private String beizhu;     //备注（退货单号）
	private int ckshuliang;    //出库数量
	private String cktime;     //出库时间
	private String jhren;      //送货方经手人
	private String ckren;      //仓库方经手人
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCkid() {
		return ckid;
	}
	public void setCkid(String ckid) {
		this.ckid = ckid;
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
	public String getCkleixing() {
		return ckleixing;
	}
	public void setCkleixing(String ckleixing) {
		this.ckleixing = ckleixing;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public int getCkshuliang() {
		return ckshuliang;
	}
	public void setCkshuliang(int ckshuliang) {
		this.ckshuliang = ckshuliang;
	}
	public String getCktime() {
		return cktime;
	}
	public void setCktime(String cktime) {
		this.cktime = cktime;
	}
	public String getJhren() {
		return jhren;
	}
	public void setJhren(String jhren) {
		this.jhren = jhren;
	}
	public String getCkren() {
		return ckren;
	}
	public void setCkren(String ckren) {
		this.ckren = ckren;
	}

}
