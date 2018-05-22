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
        <script language="javascript" src="js/WdatePicker.js"></script>
</head>
<body>
<span class="STYLE4">当前页为：查询退款信息页</span>
  <form action="tuikuan!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>退款信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="14%" height="44" align="right" nowrap class="STYLE4">退款编号:</td>
					    <td width="33%">
					    <input name='tuikuan.tkuanid' type="text" class="text"  style="width:154px" />
				        </td>
					    <td nowrap align="right" width="16%" class="STYLE4">定单编号:</td>
					    <td width="37%"><input name='tuikuan.shoukuan.xiaoshou.xiaoid' type="text" id="xiaoid" class="text" style="width:154px" /></td>
					  </tr>
					   <tr>	
							<td width="14%" height="54" align="right" nowrap class="STYLE4">退款时间:</td>
						    <td width="33%">
							  <span id="cust" class="STYLE4">
							  <input id="tkuantime"  name='tuikuan.tkuantime' type="text" onclick="WdatePicker()"  class="text" style="width:154px" />
							  </span>
						 </td>
							<td nowrap align="right" width="16%" class="STYLE4">办理人:</td>
						    <td width="37%"><input id="tkuanren" name='tuikuan.tkuanren' type="text" class="text"  style="width:154px" /> </td>
					   </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="确定" />　
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
