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
<span class="STYLE4">当前页为：市场详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>市场信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="30" align="right" nowrap class="STYLE4">市场编号:</td>
					    <td width="35%"><input name='shichang.shichangid' type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.shichangid }"/>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">&nbsp;</td>
					    <td width="35%">&nbsp;				        </td>
					    </tr>
						
						<tr>
						  <td height="32" align="right" nowrap class="STYLE4">所属地区:</td>
						  <td><input name='shichang.diqu' type="text" class="text" readonly="readonly"  style="width:154px" value="${shichang.diqu }" />                        
						  <td nowrap align="right" class="STYLE4">所在城市:</td>
						  <td><input name='shichang.chengshi' type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.chengshi }"  /></td>
					    </tr>
						<tr>
					    <td width="15%" height="32" align="right" nowrap class="STYLE4">经济情况:</td>
					    <td width="35%"><input name='shichang.jingji' type="text" class="text" readonly="readonly"  style="width:154px" value="${shichang.jingji }"  />
					    <td nowrap align="right" width="18%" class="STYLE4">重要节日（当地的）:</td>
					     <td width="35%"><input name="shichang.jieri" type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.jieri }" /></td>	
						</tr>
						<tr>	
							<td width="15%" height="41" align="right" nowrap class="STYLE4">负责人姓名:</td>
						  <td width="35%">
								<input name='shichang.funame' type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.funame}" /></td>
							<td nowrap align="right" width="18%" class="STYLE4">负责人联系电话:</td>
							<td width="35%"><input name='shichang.fulianxi' type="text" class="text" readonly="readonly" style="width:154px" value="${shichang.fulianxi}" /></td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">营销策略:</td>
						  <td><textarea name="shichang.celue" cols="45" rows="4" id="textare" readonly="readonly">${shichang.celue }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注:</td>
						  <td><textarea name="shichang.beizhu" cols="45" rows="4" id="textare" readonly="readonly">${shichang.beizhu }</textarea></td>
					    </tr>
					  </table>
			           <br />
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
