<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				if(document.getElementById("rkleixing").value==""){
					document.getElementById("rkleixing1").innerHTML="请选择入库类型！";
					return false;
				}
				if(document.getElementById("rkleixing").value!=""){
					document.getElementById("rkleixing1").innerHTML="";
				}
				if(document.getElementById("rkshuliang").value==""){
					document.getElementById("rkshuliang1").innerHTML="入库数量不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("rkshuliang").value)){
					document.getElementById("rkshuliang1").innerHTML="入库数量为数字！";
					return false;
				}
				if(document.getElementById("rkshuliang").value!=""){
					document.getElementById("rkshuliang1").innerHTML="";
				}
				if(document.getElementById("rktime").value==""){
					document.getElementById("rktime1").innerHTML="入库时间不能为空！";
					return false;
				}
				if(document.getElementById("rktime").value!=""){
					document.getElementById("rktime1").innerHTML="";
				}
				if(document.getElementById("shren").value==""){
					document.getElementById("shren1").innerHTML="送货方经手人不能为空！";
					return false;
				}
				if(document.getElementById("shren").value!=""){
					document.getElementById("shren1").innerHTML="";
				}
				if(document.getElementById("ckren").value==""){
					document.getElementById("ckren1").innerHTML="仓库方经手人不能为空！";
					return false;
				}
				if(document.getElementById("ckren").value!=""){
					document.getElementById("ckren1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加入库基本信息页</span>
  <form action="ruku!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>入库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="33" align="right" nowrap class="STYLE4">入库编号:</td>
					    <td width="35%">
					      <%
					         Date dd=new Date();
					         StringBuffer sb=new StringBuffer();
					         sb.append("rk").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					     %>
					     <input name='ruku.rkid' readonly="readonly" type="text" class="text"  style="width:154px" value="<%=sb.toString()%>"/>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">库存编号:</td>
					    <td width="35%"><input name='ruku.kcid' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.kcid }" /></td>
					  </tr>
						<tr>
					    <td width="15%" height="35" align="right" nowrap class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input name='ruku.channame' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.channame}"/>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%"><input name='ruku.ckname' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.ckname }"/>
						</td>
						</tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">入库类型:</td>
						  <td><select name="ruku.rkleixing" id="rkleixing">
								    <option value="" selected="selected">请选择</option>
									<option value="生产入库">生产入库</option>
									<option value="退货入库">退货入库</option>									
								    <option value="其他">其他</option>
								</select>
								<span id="rkleixing1" class="STYLE4"></span>
								</td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注（退货单号）:</td>
						  <td><input name='ruku.beizhu'  type="text" class="text" style="width:154px"/></td>
					    </tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">入库数量:</td>
						  <td><input name='ruku.rkshuliang' id="rkshuliang" type="text"  class="text" style="width:154px"/><span class="STYLE4">（箱）</span>
						  <span id="rkshuliang1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">入库时间:</td>
						  <td><input name='ruku.rktime' id="rktime" type="text" onclick="WdatePicker()" style="width:154px" />
						  <span id="rktime1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="35" align="right" nowrap class="STYLE4">送货方经手人:</td>
						  <td><input name='ruku.shren' id="shren"  type="text" class="text" style="width:154px" />
						  <span id="shren1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">仓库方经手人:</td>
						  <td><input name='ruku.ckren' id="ckren"  type="text" class="text" style="width:154px" />
						  <span id="ckren1" class="STYLE4"></span>
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
