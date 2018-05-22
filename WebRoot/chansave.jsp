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
<script type='text/javascript' src='dwr/interface/test6.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript">
		 function invoke(){ 
            var chanid = document.getElementById("chanid");
                 test6.find(chanid.value,
                    function(data){
                    var mm = document.getElementById("mm");
                    mm.innerHTML=data;
                    }
                 );     
     }
     function on_submit(){
				if(document.getElementById("chanid").value==""){
					document.getElementById("chanid1").innerHTML="产品编号不能为空！";
					return false;
				}
				if(document.getElementById("chanid").value!=""){
					document.getElementById("chanid1").innerHTML="";
				}
				
				if(document.getElementById("channame").value==""){
					document.getElementById("channame1").innerHTML="产品名称不能为空！";
					return false;
				}
				if(document.getElementById("channame").value!=""){
					document.getElementById("channame1").innerHTML="";
				}
				if(document.getElementById("piwenhao").value==""){
					document.getElementById("piwenhao1").innerHTML="批准文号不能为空！";
					return false;
				}
				if(document.getElementById("piwenhao").value!=""){
					document.getElementById("piwenhao1").innerHTML="";
				}
				if(document.getElementById("guige").value==""){
					document.getElementById("guige1").innerHTML="规格不能为空！";
					return false;
				}
				if(document.getElementById("guige").value!=""){
					document.getElementById("guige1").innerHTML="";
				}
				if(document.getElementById("leixing").value==""){
					document.getElementById("leixing1").innerHTML="请选择产品类型！";
					return false;
				}
				if(document.getElementById("leixing").value!=""){
					document.getElementById("leixing1").innerHTML="";
				}
				if(document.getElementById("jixing").value==""){
					document.getElementById("jixing1").innerHTML="请选择产品剂型！";
					return false;
				}
				if(document.getElementById("jixing").value!=""){
					document.getElementById("jixing1").innerHTML="";
				}
				if(document.getElementById("jiage").value==""){
					document.getElementById("jiage1").innerHTML="批发价格不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("jiage").value)){
					document.getElementById("jiage1").innerHTML="批发价格为数字！";
					return false;
				}
				if((!isNaN(document.getElementById("jiage").value))||document.getElementById("yanjin").value!=""){
					document.getElementById("jiage1").innerHTML="";
				}
				if(document.getElementById("youxiaoqi").value==""){
					document.getElementById("youxiaoqi1").innerHTML="有效期不能为空！";
					return false;
				}
				if((!isNaN(document.getElementById("youxiaoqi").value))){
					document.getElementById("youxiaoqi1").innerHTML="";
				}
				if(document.getElementById("shangtime").value==""){
					document.getElementById("shangtime1").innerHTML="研发开始时间不能为空！";
					return false;
				}
				if(document.getElementById("shangtime").value!=""){
					document.getElementById("shangtime1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加产品信息页</span>
  <form action="chanpin!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>产品信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">产品编号:</td>
					    <td width="35%">
					    <input name='chanpin.chanid' type="text" class="text" id="chanid" style="width:154px" onblur="invoke();"/>
				        <span id="mm" class="STYLE4"></span>
				        <span id="chanid1" class="STYLE4"></span>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input id="channame" name='chanpin.channame' type="text" class="text" style="width:154px"  />
				        <span id="channame1" class="STYLE4"></span>
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">批准文号:</td>
					    <td width="35%">
					    <input id="piwenhao" name='chanpin.piwenhao' type="text" class="text" style="width:154px" />
					    <span id="piwenhao1" class="STYLE4"></span>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">规格:</td>
					     <td width="35%">
					     <input id="guige" name='chanpin.guige' type="text" class="text" style="width:154px"  />
					     <span id="guige1" class="STYLE4"></span>
					     </td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">产品类型:</td>
							<td width="35%">
								<select name="chanpin.leixing" id="leixing">
									<option value="" selected="selected">请选择</option>
									<option value="中药">中药</option>
									<option value="西药">西药</option>
									<option value="保健品">保健品</option>
									<option value="饮品">饮品</option>
								    <option value="其他">其他</option>
								</select>		
								<span id="leixing1" class="STYLE4"></span>					
							</td>
							<td nowrap align="right" width="18%" class="STYLE4">产品剂型:</td>
							<td width="35%"><select name="chanpin.jixing" id="jixing">
                              <option value="" selected="selected">请选择</option>
									<option value="胶囊">胶囊</option>
									<option value="片剂">片剂</option>
									<option value="口服液">口服液</option>
									<option value="颗粒">颗粒</option>
									<option value="注射剂">注射剂</option>
									<option value="糖浆">糖浆</option>
									<option value="药丸">药丸</option>
									<option value="膏药">膏药</option>
								    <option value="其他">其他</option>
                            </select>
                            <span id="jixing1" class="STYLE4"></span>	
                            </td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">批发价格:</td>
						  <td><input name='chanpin.jiage' id="jiage" type="text" class="text" style="width:154px" />
					      <span id="aa" class="STYLE4">（箱/元）</span>
					      <span id="jiage1" class="STYLE4"></span>
					      </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">&nbsp;</td>
						  <td>&nbsp;</td>
					    </tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">功能主治:</td>
						  <td><textarea name="chanpin.gongneng" cols="45" rows="4" id="textare"></textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">用法用量:</td>
						  <td><textarea name="chanpin.yongfa" cols="45" rows="4" id="textare"></textarea></td>
					    </tr>
						<tr>	
							<td width="15%" height="72" align="right" class="STYLE4">主要成份:</td>
							<td width="35%"><textarea name="chanpin.chengfen" cols="45" rows="4" id="textare"></textarea></td>
							<td nowrap="nowrap" align="right" class="STYLE4">不良反应:</td>
							<td><textarea name="chanpin.buliang" cols="45" rows="4" id="textare"></textarea></td>
						</tr>
						<tr>
						  <td height="72" align="right" nowrap="nowrap" class="STYLE4">禁忌:</td>
						  <td><textarea name="chanpin.jinji" cols="45" rows="4" id="textare"></textarea></td>
						  <td  align="right" class="STYLE4">注意事项:</td>
						  <td ><textarea name="chanpin.zhuyi" cols="45" rows="4" id="textare"></textarea></td>
					    </tr>
						<tr>
						  <td height="20" align="right"  nowrap="nowrap" class="STYLE4">有效期:</td>
						  <td><input name='chanpin.youxiaoqi' id="youxiaoqi" type="text" class="text" style="width:154px" />
						  <span id="youxiaoqi1" class="STYLE4"></span>	
						  </td>
						  <td  align="right" class="STYLE4">上线时间:</td>
							<td ><input name='chanpin.shangtime' id="shangtime" type="text" onClick="WdatePicker()" style="width:154px"/>
							     <input name='chanpin.biaozhi' type="hidden" value="0"/>
							      <span id="shangtime1" class="STYLE4"></span>
							 </td>
						</tr>
					  </table>
			           <br />
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
