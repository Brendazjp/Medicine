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
</head>
<body>
<span class="STYLE4">当前页为：出库详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>出库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="33" align="right" nowrap class="STYLE4">出库编号:</td>
					    <td width="35%">
					     <input name='chuku.rkid' readonly="readonly" type="text" class="text"  style="width:154px" value="${chuku.ckid }"/>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">库存编号:</td>
					    <td width="35%"><input name='chuku.kcid' readonly="readonly" type="text" class="text" style="width:154px" value="${chuku.kcid }" /></td>
					  </tr>
						<tr>
					    <td width="15%" height="35" align="right" nowrap class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input name='chuku.channame' readonly="readonly" type="text" class="text" style="width:154px" value="${chuku.channame}"/>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%"><input name='chuku.ckname' readonly="readonly" type="text" class="text" style="width:154px" value="${chuku.ckname }"/>
						</td>
						</tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">出库类型:</td>
						  <td width="35%"><input name='chuku.rkleixing' readonly="readonly" type="text" class="text" style="width:154px" value="${chuku.ckleixing }"/>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注（发货单号）:</td>
						  <td><input name='chuku.beizhu'  type="text" readonly="readonly" class="text" style="width:154px" value="${chuku.beizhu }"/></td>
					    </tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">出库数量:</td>
						  <td><input name='chuku.rkshuliang' type="text" readonly="readonly" class="text" style="width:154px" value="${chuku.ckshuliang }"/><span class="STYLE4">（箱）</span></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">出库时间:</td>
						  <td><input name='chuku.rktime' type="text" readonly="readonly"  style="width:154px" value="${chuku.cktime}"/></td>
					    </tr>
						<tr>
						  <td height="35" align="right" nowrap class="STYLE4">接货方经手人:</td>
						  <td><input name='chuku.shren'  type="text" readonly="readonly" class="text" style="width:154px" value="${chuku.jhren}"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">仓库方经手人:</td>
						  <td><input name='chuku.ckren'  type="text" readonly="readonly" class="text" style="width:154px" value="${chuku.ckren}"/></td>
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
</body>
</html>
