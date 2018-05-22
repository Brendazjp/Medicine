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
<span class="STYLE4">当前页为：潜在客户详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>产品信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">潜在客户编号:</td>
					    <td width="35%"><input name='qianzai.qianid' type="text" readonly="readonly" class="text" style="width:154px" value="${qianzai.qianid }"/>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">公司名称:</td>
					    <td width="35%"><textarea name="qianzai.qianname" cols="45" rows="1" id="textare" readonly="readonly">${qianzai.qianname }</textarea>
				        </td>
					    </tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">公司性质:</td>
					    <td width="35%"><input name='qianzai.xingzhi' type="text" readonly="readonly" class="text" style="width:154px" value="${qianzai.xingzhi }" /></td>
				         <td nowrap align="right" width="18%" class="STYLE4">记录时间:</td>
					     <td width="35%"><input name='qianzai.jilutime' type="text" readonly="readonly" class="text" style="width:154px" value="${qianzai.jilutime }" /></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">所在城市:</td>
							<td width="35%">
								<input name='qianzai.chengshi' type="text" readonly="readonly" class="text" style="width:154px" value="${qianzai.chengshi }" /></td>
							<td nowrap align="right" width="18%" class="STYLE4">公司类型:</td>
							<td width="35%"><input name='qianzai.leixing' type="text" readonly="readonly" class="text" style="width:154px" value="${qianzai.leixing }" />
							</td>
						</tr>
						<tr>
						  <td height="111" align="right" nowrap class="STYLE4">公司背景:</td>
						  <td><textarea name="qianzai.beijing" cols="45" rows="6" id="textare" readonly="readonly">${qianzai.beijing }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">发展状况:</td>
						  <td><textarea name="qianzai.zhuangkuang" cols="45" rows="6" id="textare" readonly="readonly">${qianzai.zhuangkuang }</textarea></td>
					    </tr>
						<tr>	
							<td width="15%" height="72" align="right" class="STYLE4">挖掘原因:</td>
							<td colspan="3"><textarea name="qianzai.yuanyin" cols="60" rows="7" id="textare" readonly="readonly">${qianzai.yuanyin }</textarea></td>
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
