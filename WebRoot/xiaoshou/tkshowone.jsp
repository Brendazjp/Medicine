<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
</head>
<body>
<span class="STYLE4">当前页为：退款详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>退款信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="44" align="right" nowrap class="STYLE4">退款编号:</td>
					    <td width="35%">
					    <input name='tuikuan.tkuanid' type="text" class="text" readonly="readonly" style="width:154px" value="${tuikuan.tkuanid }" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">收款编号:</td>
					    <td width="35%"><input name='xiaoid' type="text" readonly="readonly" class="text" style="width:154px" value="${tuikuan.shoukuan.shoukuanid }"/></td>
					  </tr>
					   <tr>
					     <td height="54" align="right" nowrap class="STYLE4">定单编号:</td>
					     <td><input name='xiaoid' type="text" readonly="readonly" class="text" style="width:154px" value="${tuikuan.shoukuan.xiaoshou.xiaoid}"/></td>
					     <td nowrap align="right" class="STYLE4">客房公司名称:</td>
					     <td><input name='xiaoid' type="text" readonly="readonly" class="text" style="width:154px" value="${tuikuan.shoukuan.xiaoshou.kehu.kename }"/></td>
				        </tr>
					   <tr>	
							<td width="15%" height="54" align="right" nowrap class="STYLE4">收款金额:</td>
						    <td width="35%">
							  <input name='xiaoid' type="text" readonly="readonly" class="text" style="width:154px" value="${tuikuan.shoukuan.shijine }"/>
							  <span class="STYLE4">（元）</span></td>
							<td nowrap align="right" width="18%" class="STYLE4">退款时间:</td>
						    <td width="35%"><input readonly="readonly"  name='tuikuan.tkuantime' type="text"  class="text" style="width:154px" value="${tuikuan.tkuantime }"/> </td>
					   </tr>
					   
						<tr>
					    <td width="15%" height="45" align="right" nowrap class="STYLE4">退款金额:</td>
					    <td width="35%"><input readonly="readonly" name='tuikuan.tkuanjine' type="text" class="text" style="width:154px"  value="${tuikuan.tkuanjine }" />
					      <span class="STYLE4">（元）</span></td>
					    <td nowrap align="right" width="18%" class="STYLE4">办理人:</td>
					     <td width="35%"><input readonly="readonly" name='tuikuan.tkuanren' type="text" class="text"  style="width:154px" value="${tuikuan.tkuanren }"/></td>
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
