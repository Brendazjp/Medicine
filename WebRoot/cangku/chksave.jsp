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
				if(document.getElementById("ckleixing").value==""){
					document.getElementById("ckleixing1").innerHTML="请选择出库类型！";
					return false;
				}
				if(document.getElementById("ckleixing").value!=""){
					document.getElementById("ckleixing1").innerHTML="";
				}
				if(document.getElementById("ckshuliang").value==""){
					document.getElementById("ckshuliang1").innerHTML="出库数量不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("ckshuliang").value)){
					document.getElementById("ckshuliang1").innerHTML="出库数量为数字！";
					return false;
				}
				if(document.getElementById("ckshuliang").value!=""){
					document.getElementById("ckshuliang1").innerHTML="";
				}
				if(document.getElementById("cktime").value==""){
					document.getElementById("cktime1").innerHTML="出库时间不能为空！";
					return false;
				}
				if(document.getElementById("cktime").value!=""){
					document.getElementById("cktime1").innerHTML="";
				}
				if(document.getElementById("jhren").value==""){
					document.getElementById("jhren1").innerHTML="接货方经手人不能为空！";
					return false;
				}
				if(document.getElementById("jhren").value!=""){
					document.getElementById("jhren1").innerHTML="";
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
<span class="STYLE4">当前页为：添加出库基本信息页</span>
  <form action="chuku!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>出库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="33" align="right" nowrap class="STYLE4">出库编号:</td>
					    <td width="35%">
					      <%
					         Date dd=new Date();
					         StringBuffer sb=new StringBuffer();
					         sb.append("chk").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					     %>
					     <input name='chuku.ckid' readonly="readonly" type="text" class="text"  style="width:154px" value="<%=sb.toString()%>"/>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">库存编号:</td>
					    <td width="35%"><input name='chuku.kcid' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.kcid }" /></td>
					  </tr>
						<tr>
					    <td width="15%" height="35" align="right" nowrap class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input name='chuku.channame' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.channame}"/>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%"><input name='chuku.ckname' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.ckname }"/>
						</td>
						</tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">出库类型:</td>
						  <td><select name="chuku.ckleixing" id="ckleixing">
								    <option value="" selected="selected">请选择</option>
									<option value="发货出库">发货出库</option>
									<option value="过期出库">过期出库</option>									
								    <option value="其他">其他</option>
								</select>
								<span id="ckleixing1" class="STYLE4"></span>
								</td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注（发货单号）:</td>
						  <td><input name='chuku.beizhu'  type="text" class="text" style="width:154px"/></td>
					    </tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">出库数量:</td>
						  <td><input name='chuku.ckshuliang' id="ckshuliang" type="text"  class="text" style="width:154px"/><span class="STYLE4">（箱）</span>
						  <span id="ckshuliang1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">出库时间:</td>
						  <td><input name='chuku.cktime' id="cktime" type="text" onclick="WdatePicker()" style="width:154px" />
						  <span id="cktime1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="35" align="right" nowrap class="STYLE4">接货方经手人:</td>
						  <td><input name='chuku.jhren' id="jhren" type="text" class="text" style="width:154px" />
						  <span id="jhren1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">仓库方经手人:</td>
						  <td><input name='chuku.ckren' id="ckren" type="text" class="text" style="width:154px" />
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
