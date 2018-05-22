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
</head>
<body>
<span class="STYLE4">当前页为：客户咨询详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户咨询信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="20" align="right" nowrap class="STYLE4">客户编号:</td>
					    <td width="35%"><input name='kehuid' type="text" class="text" readonly="readonly" style="width:154px" value="${fuwu.kehu.kehuid}" /></td>
					    <td nowrap align="right" width="18%" class="STYLE4">&nbsp;</td>
					    <td width="35%">&nbsp;</td>
					   </tr>
				      <tr>	
							<td width="15%" height="20" align="right" nowrap class="STYLE4">客户公司名称:</td>
						    <td width="35%"><textarea name="kename" cols="45" rows="1" id="textare" readonly="readonly">${fuwu.kehu.kename }</textarea></td>
							<td nowrap align="right" width="18%" class="STYLE4">服务编号:</td>
					<td width="35%"><input name='fuwu.fuwuid' type="text" readonly="readonly" class="text" style="width:154px" value="${fuwu.fuwuid}"/></td>
						</tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">记录时间:</td>
					    <td width="35%"><input name='fuwu.futime' type="text" readonly="readonly" class="text" style="width:154px" value="${fuwu.futime }"/></td>
				         <td nowrap align="right" width="18%" class="STYLE4">记录人姓名:</td>
					     <td width="35%"><input name='fuwu.jiluren' type="text" readonly="readonly" class="text" style="width:154px"  value="${fuwu.jiluren }"/></td>
						</tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">咨询内容:</td>
						  <td><textarea name="fuwu.neirong" cols="45" rows="6" id="textare" readonly="readonly">${fuwu.neirong }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">咨询回复:</td>
						  <td><textarea name="fuwu.fangfa" cols="45" rows="6" id="textare" readonly="readonly">${fuwu.fangfa }</textarea></td>
					    </tr>
						<tr>
						  <td height="111" align="right" nowrap class="STYLE4">处理结果:</td>
						  <td><textarea name="fuwu.jieguo" cols="45" rows="6" id="textare" readonly="readonly">${fuwu.jieguo }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注:</td>
						  <td><textarea name="fuwu.beizhu" cols="45" rows="6" id="textare" readonly="readonly">${fuwu.beizhu }</textarea></td>
					    </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="button" value="返回" onclick="window.history.go(-1);" />
</TD>
		</TR>		
  </table>
</body>
</html>
