<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<style type="text/css">
<!--
body {
	background-color: #DAF5F5;
}
.STYLE4 {
	color: #03515d;
	font-size: 13px;
}
-->
</style>
<script language="javascript" src="js/WdatePicker.js"></script>
<script type='text/javascript' src='dwr/interface/test9.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript">
		 function invoke(){ 
            var kehuid = document.getElementById("kehuid");
                 test9.find(kehuid.value,
                    function(data){
                    var mm = document.getElementById("mm");
                    mm.innerHTML=data;
                    }
                 );     
     }
      function on_submit(){
				if(document.getElementById("kehuid").value==""){
					document.getElementById("kehuid1").innerHTML="客户编号不能为空！";
					return false;
				}
				if(document.getElementById("kehuid").value!=""){
					document.getElementById("kehuid1").innerHTML="";
				}
				if(document.getElementById("kename").value==""){
					document.getElementById("kename1").innerHTML="公司名称不能为空！";
					return false;
				}
				if(document.getElementById("kename").value!=""){
					document.getElementById("kename1").innerHTML="";
				}
				if(document.getElementById("xingzhi").value==""){
					document.getElementById("xingzhi1").innerHTML="请选择公司性质！";
					return false;
				}
				if(document.getElementById("xingzhi").value!=""){
					document.getElementById("xingzhi1").innerHTML="";
				}
				if(document.getElementById("leixing").value==""){
					document.getElementById("leixing1").innerHTML="请选择公司类型！";
					return false;
				}
				if(document.getElementById("leixing").value!=""){
					document.getElementById("leixing1").innerHTML="";
				}
				if(document.getElementById("dizhi").value==""){
					document.getElementById("dizhi1").innerHTML="公司地址不能为空！";
					return false;
				}
				if(document.getElementById("dizhi").value!=""){
					document.getElementById("dizhi1").innerHTML="";
				}
				if(document.getElementById("jilutime").value==""){
					document.getElementById("jilutime1").innerHTML="记录时间不能为空！";
					return false;
				}
				if(document.getElementById("jilutime").value!=""){
					document.getElementById("jilutime1").innerHTML="";
				}
				if(document.getElementById("gongphone").value==""){
					document.getElementById("gongphone1").innerHTML="公司电话不能为空！";
					return false;
				}
				if(document.getElementById("gongphone").value!=""){
					document.getElementById("gongphone1").innerHTML="";
				}
				if(document.getElementById("chuanzheng").value==""){
					document.getElementById("chuanzheng1").innerHTML="传真号码不能为空！";
					return false;
				}
				if(document.getElementById("chuanzheng").value!=""){
					document.getElementById("chuanzheng1").innerHTML="";
				}
				if(document.getElementById("youbian").value==""){
					document.getElementById("youbian1").innerHTML="邮政号码不能为空！";
					return false;
				}
				if(document.getElementById("youbian").value!=""){
					var s=document.getElementById("youbian").value;
					var v=/^[0-9]{6}/
					var f=s.match(v);
					if(f==null){
						document.getElementById("youbian1").innerHTML="邮政号码为数字，长度为6位！";
						return false;
					}
				}
				if(document.getElementById("youbian").value!=""){
					document.getElementById("youbian1").innerHTML="";
				}
				if(document.getElementById("lianname").value==""){
					document.getElementById("lianname1").innerHTML="联系人姓名不能为空！";
					return false;
				}
				if(document.getElementById("lianname").value!=""){
					document.getElementById("lianname1").innerHTML="";
				}
				if(document.getElementById("lianphone").value==""){
					document.getElementById("lianphone1").innerHTML="联系人电话不能为空！";
					return false;
				}
				if(document.getElementById("lianphone").value!=""){
					var s=document.getElementById("lianphone").value;
					var v=/^[0-9]{7,12}/
					var f=s.match(v);
					if(f==null){
						document.getElementById("lianphone1").innerHTML="联系人电话为数字，长度在7－12位！";
						return false;
					}
				}
				if(document.getElementById("lianphone").value!=""){
					document.getElementById("lianphone1").innerHTML="";
				}
				if(document.getElementById("mail").value==""){
					document.getElementById("mail1").innerHTML="联系人E-mail不能为空！";
					return false;
				}
				if(document.getElementById("mail").value!=""){
					var s=document.getElementById("mail").value;
					var v=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])/
					var f=s.match(v);
					if(f==null){
						document.getElementById("mail1").innerHTML="联系人E-mail格式不正确！";
						return false;
					}
				}
				if(document.getElementById("mail").value!=""){
					document.getElementById("mail1").innerHTML="";
				}
				if(document.getElementById("beijing").value==""){
					document.getElementById("beijing1").innerHTML="公司背景不能为空！";
					return false;
				}
				if(document.getElementById("beijing").value!=""){
					document.getElementById("beijing1").innerHTML="";
				}
				if(document.getElementById("zhuangkuang").value==""){
					document.getElementById("zhuangkuang1").innerHTML="发展状况不能为空！";
					return false;
				}
				if(document.getElementById("zhuangkuang").value!=""){
					document.getElementById("zhuangkuang1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加客户信息页</span>
  <form action="kehu!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="20" align="right" nowrap class="STYLE4">所属市场编号:</td>
					    <td width="35%"><input name='shichangid' type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.shichangid}" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">所属城市:</td>
					    <td width="35%"><input name='chengshi' type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.chengshi}" />
				        </td>
					   </tr>
					   <tr>	
							<td width="15%" height="33" align="right" nowrap class="STYLE4">客户编号:</td>
						    <td width="35%">
								<input id="kehuid" name='kehu.kehuid' type="text" class="text" style="width:154px" onblur="invoke();"/>
								<span id="mm" class="STYLE4"></span>
								<span id="kehuid1" class="STYLE4"></span>
								</td>
							<td nowrap align="right" width="18%" class="STYLE4">公司名称:</td>
						 <td width="35%"><textarea name="kehu.kename" cols="45" rows="1" id="kename"></textarea>
						 <span id="kename1" class="STYLE4"></span>
						 </td>
						</tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">公司性质:</td>
					    <td width="35%"><select name="kehu.xingzhi" id="xingzhi">
                          <option value="" selected="selected">请选择</option>
                          <option value="国有企业">国有企业</option>
                          <option value="外资企业">外资企业</option>
                          <option value="合资企业">合资企业</option>
                          <option value="私人企业">私人企业</option>
						  <option value="集体企业">集体企业</option>
                          <option value="其他">其他</option>
                        </select>
                        <span id="xingzhi1" class="STYLE4"></span>
                        </td>
				         <td nowrap align="right" width="18%" class="STYLE4">公司类型:</td>
					     <td width="35%"><select name="kehu.leixing" id="leixing">
                           <option value="" selected="selected">请选择</option>
                           <option value="医院">医院</option>
                           <option value="药店">药店</option>
                           <option value="超市">超市</option>
                           <option value="经销商">经销商</option>
                           <option value="其他">其他</option>
                         </select>
                         <span id="leixing1" class="STYLE4"></span>
                         </td>
						</tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">公司地址:</td>
						  <td><textarea name="kehu.dizhi" cols="45" rows="1" id="dizhi"></textarea>
						  <span id="dizhi1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">记录时间:</td>
						  <td><input name='kehu.jilutime' id="jilutime" type="text" onClick="WdatePicker()" style="width:154px" />
						  <span id="jilutime1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">公司电话:</td>
						  <td><input name='kehu.gongphone' id="gongphone" type="text" class="text" style="width:154px" />
						  <span id="gongphone1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">传真号码:</td>
						  <td><input name='kehu.chuanzheng' id="chuanzheng" type="text" class="text" style="width:154px" />
						  <span id="chuanzheng1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">邮政号码:</td>
						  <td><input name='kehu.youbian' id="youbian" type="text" class="text" style="width:154px" />
						  <span id="youbian1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">联系人姓名:</td>
						  <td><input name='kehu.lianname' id="lianname" type="text" class="text" style="width:154px" />
						  <span id="lianname1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">联系人电话:</td>
						  <td><input name='kehu.lianphone' id="lianphone" type="text" class="text" style="width:154px" />
						  <span id="lianphone1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">联系人E-mail:</td>
						  <td><input name='kehu.mail' id="mail" type="text" class="text" style="width:154px" />
						  <span id="mail1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="111" align="right" nowrap class="STYLE4">公司背景:</td>
						  <td><textarea name="kehu.beijing" cols="45" rows="6" id="beijing"></textarea>
						  <span id="beijing1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">发展状况:</td>
						  <td><textarea name="kehu.zhuangkuang" cols="45" rows="6" id="zhuangkuang"></textarea>
						  <span id="zhuangkuang1" class="STYLE4"></span>
						  </td>
					    </tr>
					      <input name='kehu.manyi' type="hidden" class="text" style="width:154px" value="5"/>
					      <input name='kehu.zhongcheng' type="hidden" class="text" style="width:154px" value="0"/>
					      <input name='kehu.biaozhi' type="hidden" class="text" style="width:154px" value="0"/>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="确定" />　
			<input type="reset"  value="重设"/>
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
