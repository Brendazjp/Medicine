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
<span class="STYLE4">当前页为：查询研发产品信息页</span>
  <form action="yanchan!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%">
				<fieldset style="height:100%;"><!--边框-->
				<legend>研发产品信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">研发产品编号:</td>
					    <td width="35%"><input name='yanchan.yanchanid' type="text" class="text" style="width:154px" />
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">研发产品名称:</td>
					    <td width="35%"><input name='yanchan.yanchaname' type="text" class="text" style="width:154px"  />
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">研发金额:</td>
					    <td width="35%"><input name='yanchan.yanjin' type="text" class="text" style="width:154px" /></td>
				         <td nowrap align="right" width="18%" class="STYLE4">研发人数:</td>
					     <td width="35%"><input name='yanchan.yanrenshu' type="text" class="text" style="width:154px"  /></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">产品类型:</td>
							<td width="35%">
								<select name="yanchan.yanchanlei">
								    <option value="" selected="selected">请选择</option>
									<option value="中药">中药</option>
									<option value="西药">西药</option>
									<option value="保健品">保健品</option>
								    <option value="其他">其他</option>
								</select>							
							</td>
							<td nowrap align="right" width="18%" class="STYLE4">研发负责人编号:</td>
							<td width="35%"><input name='yanchan.yanfuid' type="text" class="text" style="width:154px" /></td>
				        </tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">研发负责人姓名:</td>
						  <td><input name='yanchan.yanfuname' type="text" class="text" style="width:154px" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">研发负责人联系方式:</td>
						  <td><input name='yanchan.yanfulianxi' type="text" class="text" style="width:154px" value="" /></td>
					    </tr>
						<tr>	
							<td width="15%" height="20" align="right" nowrap class="STYLE4">研发开始时间:</td>
							<td width="35%"><input name='yanchan.yankatime' type="text" onClick="WdatePicker()" style="width:154px" /></td>
							<td nowrap="nowrap" align="right" class="STYLE4">预计完成时间:</td>
							<td><input name='yanchan.yanjietime' type="text" onClick="WdatePicker()" style="width:154px"/></td>
						</tr>
					  </table>
			           <br />
				</fieldset>			
			</TD>
		</TR>		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" value="查询" />　
			<input type="reset"  value="重设">
			<input type="button" value="返回" onclick="window.history.go(-1);"/>
			</TD>
		</TR>		
  </table>
</form>
</body>
</html>
