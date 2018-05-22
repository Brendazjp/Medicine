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
</head>
<body>
<span class="STYLE4">当前页为：查询客户投诉信息页</span>
  <form action="tousu!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户投诉信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="44" align="right" nowrap class="STYLE4">客户编号:</td>
					    <td width="35%"><input name='fuwu.kehu.kehuid' type="text" class="text"  style="width:154px"/>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">&nbsp;</td>
					    <td width="35%">&nbsp;</td>
					   </tr>
				      <tr>	
							<td width="15%" height="56" align="right" nowrap class="STYLE4">客户公司名称:</td>
						    <td width="35%"><textarea name="fuwu.kehu.kename" cols="45" rows="1" id="textare"></textarea></td>
							<td nowrap align="right" width="18%" class="STYLE4">服务编号:</td>
					     <td width="35%"><input name='fuwu.fuwuid' type="text" class="text" style="width:154px" /></td>
				      </tr>
						<tr>
					    <td width="15%" height="40" align="right" nowrap class="STYLE4">记录时间:</td>
					    <td width="35%"><input name='fuwu.futime' type="text" onClick="WdatePicker()" style="width:154px" /></td>
				         <td nowrap align="right" width="18%" class="STYLE4">记录人姓名:</td>
					     <td width="35%"><input name='fuwu.jiluren' type="text" class="text" style="width:154px" /></td>
						</tr>
						<input name='fuwu.fuleibei' type="hidden" class="text" style="width:154px" value="0" />
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="查询" />　
			<input type="reset"  value="重设"/>
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
