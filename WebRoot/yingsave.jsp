<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*" pageEncoding="UTF-8"%>
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
<script type="text/javascript">
function on_submit(){
				if(document.getElementById("yingname").value==""){
					document.getElementById("yingname1").innerHTML="营销活动名称不能为空！";
					return false;
				}else{
				document.getElementById("yingname1").innerHTML="";
				}
				if(document.getElementById("chanleixing").value==""){
					document.getElementById("chanleixing1").innerHTML="请选择营销产品类型！";
					return false;
				}else{
				document.getElementById("chanleixing1").innerHTML="";
				}
				if(document.getElementById("yingtime").value==""){
					document.getElementById("yingtime1").innerHTML="营销活动时间不能为空！";
					return false;
				}else{
				document.getElementById("yingtime1").innerHTML="";
				}
				if(document.getElementById("yingfuname").value==""){
					document.getElementById("yingfuname1").innerHTML="负责人姓名不能为空！";
					return false;
				}else{
				document.getElementById("yingfuname1").innerHTML="";
				}
				if(document.getElementById("yinglianxi").value==""){
					document.getElementById("yinglianxi1").innerHTML="负责人联系电话不能为空！";
					return false;
				}
				if(document.getElementById("yinglianxi").value!=""){
					var s=document.getElementById("yinglianxi").value;
					var v=/^[0-9]{7,12}/
					var f=s.match(v);
					if(f==null){
						document.getElementById("yinglianxi1").innerHTML="负责人联系电话为数定，长度在7－12位！";
						return false;
					}
				}
                if(document.getElementById("yinglianxi").value!=""){
					document.getElementById("yinglianxi1").innerHTML="";
				}
				
				if(document.getElementById("yingrenshu").value==""){
					document.getElementById("yingrenshu1").innerHTML="参与人数不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("yingrenshu").value)){
					document.getElementById("yingrenshu1").innerHTML="参与人数为数字！";
					return false;
				}
				if((!isNaN(document.getElementById("yingrenshu").value))||document.getElementById("yingrenshu").value!=""){
					document.getElementById("yingrenshu1").innerHTML="";
				}
				if(document.getElementById("diqu").value==""){
					document.getElementById("diqu1").innerHTML="主销区域不能为空！";
					return false;
				}else{
				document.getElementById("diqu1").innerHTML="";
				}
				if(document.getElementById("chengben").value==""){
					document.getElementById("chengben1").innerHTML="投入成本不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("chengben").value)){
					document.getElementById("chengben1").innerHTML="投入成本为数字！";
					return false;
				}
				if((!isNaN(document.getElementById("chengben").value))||document.getElementById("chengben").value!=""){
					document.getElementById("chengben1").innerHTML="";
				}
				if(document.getElementById("shouyi").value==""){
					document.getElementById("shouyi1").innerHTML="收益不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("shouyi").value)){
					document.getElementById("shouyi1").innerHTML="收益为数字！";
					return false;
				}
				if((!isNaN(document.getElementById("shouyi").value))||document.getElementById("shouyi").value!=""){
					document.getElementById("shouyi1").innerHTML="";
				}
				if(document.getElementById("zongjie").value==""){
					document.getElementById("zongjie1").innerHTML="主销区域不能为空！";
					return false;
				}else{
				document.getElementById("zongjie1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
				
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加营销活动信息页</span>
  <form action="yingxiao!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>营销活动信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">营销活动编号:</td>
					    <td width="35%">
					    <%
					         Date dd=new Date();
					         StringBuffer sb=new StringBuffer();
					         sb.append("yx").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					     %>
					    <input name='yingxiao.yingid' type="text" readonly="readonly" class="text"style="width:154px" value="<%=sb.toString()%>" />
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">营销活动名称:</td>
					    <td width="35%"><textarea name="yingxiao.yingname" cols="30" rows="1" id="yingname"></textarea>
					    <span id="yingname1" class="STYLE4"></span>
					    </td>
					    </tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">营销产品类型:</td>
					    <td width="35%"><select name="yingxiao.chanleixing" id="chanleixing">
                          <option value="" selected="selected">请选择</option>
                                    <option value="中药">中药</option>
									<option value="西药">西药</option>
									<option value="保健品">保健品</option>
									<option value="饮品">饮品</option>
								    <option value="其他">其他</option>
                          </select>
                          <span id="chanleixing1" class="STYLE4"></span>
                          </td>
					    <td nowrap align="right" width="18%" class="STYLE4">营销活动时间:</td>
					     <td width="35%" class="STYLE4"><input id="yingtime" name='yingxiao.yingtime' type="text" onClick="WdatePicker()" style="width:154px" />
					     <span id="yingtime1" class="STYLE4"></span>
					     </td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">负责人姓名:</td>
					        <td width="35%" class="STYLE4"><input name='yingxiao.yingfuname' type="text" id="yingfuname" class="text"style="width:154px"  />
					        <span id="yingfuname1" class="STYLE4"></span>
					        </td>
						    <td nowrap align="right" width="18%" class="STYLE4">负责人联系电话:</td>
							<td width="35%" class="STYLE4"><input name='yingxiao.yinglianxi' type="text" id="yinglianxi" class="text"style="width:154px"  />
							<span id="yinglianxi1" class="STYLE4"></span>
							</td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">参与人数:</td>
						  <td><span class="STYLE4">
						    <input name='yingxiao.yingrenshu' type="text" id="yingrenshu"  class="text"style="width:154px" />
						  </span>
						  <span id="yingrenshu1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">主销区域:</td>
						  <td><span class="STYLE4">
						    <input name='yingxiao.diqu' type="text" id="diqu" class="text"style="width:154px"  />
						  </span>
						  <span id="diqu1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>	
							<td width="15%" height="20" align="right" class="STYLE4">投入成本:</td>
							<td width="35%"><span class="STYLE4">
							  <input name='yingxiao.chengben' type="text" id="chengben" class="text"style="width:154px"  />
							</span>
							<span id="chengben1" class="STYLE4"></span>
							</td>
							<td nowrap="nowrap" align="right" class="STYLE4">收益:</td>
							<td><span class="STYLE4">
							  <input name='yingxiao.shouyi' type="text" id="shouyi" class="text"style="width:154px"  />
							</span>
							<span id="shouyi1" class="STYLE4"></span>
							</td>
						</tr>
						<tr>
						  <td height="72" align="right" nowrap="nowrap" class="STYLE4">结果总结:</td>
						  <td colspan="3"><textarea name="yingxiao.zongjie" cols="80" rows="14" id="zongjie"></textarea>
						  <span id="zongjie1" class="STYLE4"></span>
						  </td>
					    </tr>
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
