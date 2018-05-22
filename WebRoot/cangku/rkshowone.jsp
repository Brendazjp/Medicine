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
<span class="STYLE4">当前页为：入库详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>入库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="33" align="right" nowrap class="STYLE4">入库编号:</td>
					    <td width="35%">
					     <input name='ruku.rkid' readonly="readonly" type="text" class="text"  style="width:154px" value="${ruku.rkid }"/>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">库存编号:</td>
					    <td width="35%"><input name='ruku.kcid' readonly="readonly" type="text" class="text" style="width:154px" value="${ruku.kcid }" /></td>
					  </tr>
						<tr>
					    <td width="15%" height="35" align="right" nowrap class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input name='ruku.channame' readonly="readonly" type="text" class="text" style="width:154px" value="${ruku.channame}"/>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%"><input name='ruku.ckname' readonly="readonly" type="text" class="text" style="width:154px" value="${ruku.ckname }"/>
						</td>
						</tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">入库类型:</td>
						  <td width="35%"><input name='ruku.rkleixing' readonly="readonly" type="text" class="text" style="width:154px" value="${ruku.rkleixing }"/>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注（退货单号）:</td>
						  <td><input name='ruku.beizhu'  type="text" readonly="readonly" class="text" style="width:154px" value="${ruku.beizhu }"/></td>
					    </tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">入库数量:</td>
						  <td><input name='ruku.rkshuliang' type="text" readonly="readonly" class="text" style="width:154px" value="${ruku.rkshuliang }"/><span class="STYLE4">（箱）</span></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">进住时间:</td>
						  <td><input name='ruku.rktime' type="text" readonly="readonly"  style="width:154px" value="${ruku.rktime }"/></td>
					    </tr>
						<tr>
						  <td height="35" align="right" nowrap class="STYLE4">送货方经手人:</td>
						  <td><input name='ruku.shren'  type="text" readonly="readonly" class="text" style="width:154px" value="${ruku.shren }"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">仓库方经手人:</td>
						  <td><input name='ruku.ckren'  type="text" readonly="readonly" class="text" style="width:154px" value="${ruku.ckren }"/></td>
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
