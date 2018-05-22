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
<script language="javascript" src="../js/WdatePicker.js"></script>
<script type="text/javascript">
 function on_submit(){
				if(document.getElementById("ckname").value==""){
					document.getElementById("ckname1").innerHTML="仓库名称不能为空！";
					return false;
				}
				if(document.getElementById("ckname").value!=""){
					document.getElementById("ckname1").innerHTML="";
				}
				if(document.getElementById("dizhi").value==""){
					document.getElementById("dizhi1").innerHTML="仓库地址不能为空！";
					return false;
				}
				if(document.getElementById("dizhi").value!=""){
					document.getElementById("dizhi1").innerHTML="";
				}
				if(document.getElementById("mianji").value==""){
					document.getElementById("mianji1").innerHTML="面积不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("mianji").value)){
					document.getElementById("mianji1").innerHTML="面积为数字！";
					return false;
				}
				if(document.getElementById("mianji").value!=""){
					document.getElementById("mianji1").innerHTML="";
				}
				if(document.getElementById("shitime").value==""){
					document.getElementById("shitime1").innerHTML="开始使用时间不能为空！";
					return false;
				}
				if(document.getElementById("shitime").value!=""){
					document.getElementById("shitime1").innerHTML="";
				}
				if(document.getElementById("chanlei").value==""){
					document.getElementById("chanlei1").innerHTML="主放产品类型不能为空！";
					return false;
				}
				if(document.getElementById("chanlei").value!=""){
					document.getElementById("chanlei1").innerHTML="";
				}
				if(document.getElementById("ckphone").value==""){
					document.getElementById("ckphone1").innerHTML="仓库电话不能为空！";
					return false;
				}
				if(document.getElementById("ckphone").value!=""){
					var s=document.getElementById("ckphone").value;
					var v=/^[0-9]{7,12}/
					var f=s.match(v);
					if(f==null){
						document.getElementById("ckphone1").innerHTML="仓库电话为数字，长度应该在7－12位！";
						return false;
					}
				}
				if(document.getElementById("ckphone").value!=""){
					document.getElementById("ckphone1").innerHTML="";
				}
				if(document.getElementById("fuzeren").value==""){
					document.getElementById("fuzeren1").innerHTML="负责人姓名不能为空！";
					return false;
				}
				if(document.getElementById("fuzeren").value!=""){
					document.getElementById("fuzeren1").innerHTML="";
				}
				if(document.getElementById("fuphone").value==""){
					document.getElementById("fuphone1").innerHTML="负责人电话不能为空！";
					return false;
				}
				if(document.getElementById("fuphone").value!=""){
					var s=document.getElementById("fuphone").value;
					var v=/^[0-9]{7,12}/
					var f=s.match(v);
					if(f==null){
						document.getElementById("fuphone1").innerHTML="负责人电话为数字，长度应该在7－12位！";
						return false;
					}
				}
				if(document.getElementById("fuphone").value!=""){
					document.getElementById("fuphone1").innerHTML="";
				}
				alert('增加成功！');
				return true;
				}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加仓库基本信息页</span>
  <form action="cangku!save.action" method="post"  onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>仓库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="48" align="right" nowrap class="STYLE4">仓库名称:</td>
					    <td width="35%"><input name='cangku.ckname' id="ckname" type="text" class="text"  style="width:154px" />
				        <span id="ckname1" class="STYLE4"></span>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">仓库地址:</td>
					    <td width="35%"><input name='cangku.dizhi' id="dizhi" type="text" class="text"  style="width:154px"/>
					    <span id="dizhi1" class="STYLE4"></span>
					    </td>
					  </tr>
						<tr>
					    <td width="15%" height="46" align="right" nowrap class="STYLE4">面积:</td>
					    <td width="35%"><input name='cangku.mianji' id="mianji" type="text" class="text" style="width:154px" />
					      <span class="STYLE4">(平方米)</span>
					      <span id="mianji1" class="STYLE4"></span></td>
				         <td nowrap align="right" width="18%" class="STYLE4">开始使用时间:</td>
					     <td width="35%"><input name='cangku.shitime' id="shitime" type="text" onclick="WdatePicker()" style="width:154px" />
					     <span id="shitime1" class="STYLE4"></span></td>
						</tr>
						<tr>
						  <td height="43" align="right" nowrap class="STYLE4">主放产品类型:</td>
						  <td><input name='cangku.chanlei' id="chanlei" type="text" class="text" style="width:154px" />
						  <span id="chanlei1" class="STYLE4"></span></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">仓库电话:</td>
						  <td><input name='cangku.ckphone' id="ckphone" type="text" class="text" style="width:154px" />
						  <span id="ckphone1" class="STYLE4"></span></td>
					    </tr>
						<tr>
						  <td height="48" align="right" nowrap class="STYLE4">负责人姓名:</td>
						  <td><input name='cangku.fuzeren' id="fuzeren" type="text" class="text" style="width:154px" />
						  <span id="fuzeren1" class="STYLE4"></span></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">负责人电话:</td>
						  <td><input name='cangku.fuphone' id="fuphone" type="text" class="text" style="width:154px" />
						  <span id="fuphone1" class="STYLE4"></span></td>
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
