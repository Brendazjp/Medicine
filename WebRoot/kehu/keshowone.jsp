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
<span class="STYLE4">当前页为：客户详细信息页</span>
  <table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="20" align="right" nowrap class="STYLE4">所属市场编号:</td>
					    <td width="35%"><input name='shichangid' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.shichang.shichangid}" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">所属城市:</td>
					    <td width="35%"><input name='chengshi' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.shichang.chengshi}" />
				        </td>
					   </tr>
					   <tr>	
							<td width="15%" height="33" align="right" nowrap class="STYLE4">客户编号:</td>
						    <td width="35%">
								<input name='kehu.kehuid' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.kehuid }"/></td>
							<td nowrap align="right" width="18%" class="STYLE4">公司名称:</td>
						 <td width="35%"><textarea name="kehu.kename" cols="45" rows="1" id="textare" readonly="readonly">${kehu.kename}</textarea></td>
						</tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">公司性质:</td>
					    <td width="35%">
					    <input name='kehu.xingzhi' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.xingzhi}"/>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">公司类型:</td>
					     <td width="35%">
					     <input name='kehu.leixing' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.leixing}"/>
					     </td>
						</tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">公司地址:</td>
						  <td><textarea name="kehu.dizhi" cols="45" rows="1" id="textare" readonly="readonly">${kehu.dizhi }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">记录时间:</td>
						  <td><input name='kehu.jilutime' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.jilutime }"/></td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">公司电话:</td>
						  <td><input name='kehu.gongphone' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.gongphone }" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">传真号码:</td>
						  <td><input name='kehu.chuanzheng' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.chuanzheng }" /></td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">邮政号码:</td>
						  <td><input name='kehu.youbian' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.youbian }" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">联系人姓名:</td>
						  <td><input name='kehu.lianname' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.lianname }" /></td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">联系人电话:</td>
						  <td><input name='kehu.lianphone' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.lianphone }" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">联系人E-mail:</td>
						  <td><input name='kehu.mail' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.mail }" /></td>
					    </tr>
						<tr>
						  <td height="111" align="right" nowrap class="STYLE4">公司背景:</td>
						  <td><textarea name="kehu.beijing" cols="45" rows="6" id="textare" readonly="readonly">${kehu.beijing }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">发展状况:</td>
						  <td><textarea name="kehu.zhuangkuang" cols="45" rows="6" id="textare" readonly="readonly">${kehu.zhuangkuang }</textarea></td>
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
