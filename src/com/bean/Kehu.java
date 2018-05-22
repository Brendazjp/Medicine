package com.bean;

public class Kehu {
	private int id;
	private String kehuid;     //客户编号
	private String kename;     //公司名称
	private String xingzhi;    //公司性质
	private String leixing;    //公司类型
	private String dizhi;      //公司地址
	private String jilutime;   //记录时间
	private String gongphone;  //公司电话
	private String chuanzheng; //公司传真
	private String youbian;    //公司邮编
	private String lianname;   //联系人姓名
	private String lianphone;  //联系人电话
	private String mail;       //联系人E-mail
	private String beijing;     //公司背景
	private String zhuangkuang; //发展状况
	private int manyi;         //客户信誉度   给定默认值10分
	private float zhongcheng;    //客户忠诚度   给定默认值10分
	private String liutime;    //客户流失时间
	private String liuyuanyin; //客户流失原因
	private int biaozhi;       //客户标志  现有客户标志为0，流失客户标志1
	private Shichang shichang;  //所属市场
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getKehuid() {
		return kehuid;
	}
	public void setKehuid(String kehuid) {
		this.kehuid = kehuid;
	}
	public String getKename() {
		return kename;
	}
	public void setKename(String kename) {
		this.kename = kename;
	}
	public Shichang getShichang() {
		return shichang;
	}
	public void setShichang(Shichang shichang) {
		this.shichang = shichang;
	}
	public String getXingzhi() {
		return xingzhi;
	}
	public void setXingzhi(String xingzhi) {
		this.xingzhi = xingzhi;
	}
	public String getLeixing() {
		return leixing;
	}
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	public String getDizhi() {
		return dizhi;
	}
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	public String getJilutime() {
		return jilutime;
	}
	public void setJilutime(String jilutime) {
		this.jilutime = jilutime;
	}
	public String getGongphone() {
		return gongphone;
	}
	public void setGongphone(String gongphone) {
		this.gongphone = gongphone;
	}
	public String getChuanzheng() {
		return chuanzheng;
	}
	public void setChuanzheng(String chuanzheng) {
		this.chuanzheng = chuanzheng;
	}
	public String getYoubian() {
		return youbian;
	}
	public void setYoubian(String youbian) {
		this.youbian = youbian;
	}
	public float getZhongcheng() {
		return zhongcheng;
	}
	public void setZhongcheng(float zhongcheng) {
		this.zhongcheng = zhongcheng;
	}
	public String getLianname() {
		return lianname;
	}
	public void setLianname(String lianname) {
		this.lianname = lianname;
	}
	public String getLianphone() {
		return lianphone;
	}
	public void setLianphone(String lianphone) {
		this.lianphone = lianphone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getManyi() {
		return manyi;
	}
	public void setManyi(int manyi) {
		this.manyi = manyi;
	}
	public String getLiutime() {
		return liutime;
	}
	public void setLiutime(String liutime) {
		this.liutime = liutime;
	}
	public String getLiuyuanyin() {
		return liuyuanyin;
	}
	public void setLiuyuanyin(String liuyuanyin) {
		this.liuyuanyin = liuyuanyin;
	}
	public int getBiaozhi() {
		return biaozhi;
	}
	public void setBiaozhi(int biaozhi) {
		this.biaozhi = biaozhi;
	}
	public String getBeijing() {
		return beijing;
	}
	public void setBeijing(String beijing) {
		this.beijing = beijing;
	}
	public String getZhuangkuang() {
		return zhuangkuang;
	}
	public void setZhuangkuang(String zhuangkuang) {
		this.zhuangkuang = zhuangkuang;
	}
	

}
