package com.bean;

public class Fuwu {
	private int id;
	private String fuwuid;     //服务编号
	private int fuleibei;   //服务类别
	private String futime;     //服务时间
	private String jiluren;    //记录人姓名
	private String neirong;    //服务内容
	private String fangfa;     //处理方法
	private String jieguo;     //处理结果
	private String beizhu;     //备注
	private Kehu kehu;         //所属客户
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFuwuid() {
		return fuwuid;
	}
	public void setFuwuid(String fuwuid) {
		this.fuwuid = fuwuid;
	}
	
	public String getFutime() {
		return futime;
	}
	public void setFutime(String futime) {
		this.futime = futime;
	}
	public String getJiluren() {
		return jiluren;
	}
	public void setJiluren(String jiluren) {
		this.jiluren = jiluren;
	}
	public int getFuleibei() {
		return fuleibei;
	}
	public void setFuleibei(int fuleibei) {
		this.fuleibei = fuleibei;
	}
	public String getNeirong() {
		return neirong;
	}
	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}
	public String getFangfa() {
		return fangfa;
	}
	public void setFangfa(String fangfa) {
		this.fangfa = fangfa;
	}
	public String getJieguo() {
		return jieguo;
	}
	public void setJieguo(String jieguo) {
		this.jieguo = jieguo;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public Kehu getKehu() {
		return kehu;
	}
	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}

}
