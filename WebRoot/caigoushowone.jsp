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
<span class="STYLE4">当前页为：采购单详细信息页</span>
  <form action="caigou!save.action" method="post" >
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>采购单信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">采购单编号:</td>
					    <td width="35%">
					    <input name='caigou.caigouid' type="text" class="text"style="width:154px" value="${caigou.caigouid }" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">供应商编号:</td>
					    <td width="35%">
					    <input name='caigou.gongid' type="text" class="text"style="width:154px" value="${caigou.gongid }" />
					    </td>
					    </tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">物料编号:</td>
					    <td width="35%">
					    <input name='caigou.wuliaoid' type="text" class="text"style="width:154px" value="${caigou.wuliaoid }" />
					     </td>
					    <td nowrap align="right" width="18%" class="STYLE4">数量:</td>
					    <td width="35%">
					    <input name='caigou.shouliang' type="text" class="text"style="width:154px" value="${caigou.shouliang }" />
					     </td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">金额:</td>
							<td width="35%">
					        <input name='caigou.jine' type="text" class="text"style="width:154px" value="${caigou.jine }" />
					        <span class="STYLE4">元</span>
					        </td>
						    <td nowrap align="right" width="18%" class="STYLE4">采购时间:</td>
							<td width="35%" class="STYLE4"><input id="yingtime" name='caigou.caitime' type="text"  style="width:154px" value="${caigou.caitime }"/>
							<span id="yinglianxi1" class="STYLE4"></span>
							</td>
						</tr>
						
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
