<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<span class="STYLE4">当前页为：输入产品查询信息页</span>
  <form action="chanpin!findxia.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>产品信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">产品编号:</td>
					    <td width="35%"><input name='chanpin.chanid' type="text" class="text"  style="width:154px"/>
				        </td>
				        
					    <td nowrap align="right" width="18%" class="STYLE4">产品名称:</td>
					    <td width="35%"><input name='chanpin.channame' type="text" class="text" style="width:154px"  />
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">批准文号:</td>
					    <td width="35%"><input name='chanpin.piwenhao' type="text" class="text" style="width:154px"/></td>
				         <td nowrap align="right" width="18%" class="STYLE4">规格:</td>
					     <td width="35%"><input name='chanpin.guige' type="text" class="text" style="width:154px"  /></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">产品类型:</td>
							<td width="35%">
								<select name="chanpin.leixing">
									<option value="" selected="selected">请选择</option>
									<option value="中药">中药</option>
									<option value="西药">西药</option>
									<option value="保健品">保健品</option>
									<option value="饮品">饮品</option>
								    <option value="其他">其他</option>
								</select>							</td>
							<td nowrap align="right" width="18%" class="STYLE4">产品剂型:</td>
							<td width="35%"><select name="chanpin.jixing">
                              <option value="" selected="selected">请选择</option>
									<option value="胶囊">胶囊</option>
									<option value="片剂">片剂</option>
									<option value="口服液">口服液</option>
									<option value="颗粒">颗粒</option>
									<option value="注射剂">注射剂</option>
									<option value="糖浆">糖浆</option>
									<option value="药丸">药丸</option>
									<option value="膏药">膏药</option>
								    <option value="其他">其他</option>
                            </select></td>
						</tr>
						<tr>
						  <td height="20" align="right" nowrap="nowrap" class="STYLE4">有效期:</td>
						  <td><input name='chanpin.youxiaoqi' type="text" class="text" style="width:154px"/></td>
						  <td  align="right" class="STYLE4">上线时间:</td>
							<td ><input name='chanpin.shangtime' type="text" onClick="WdatePicker()" style="width:154px"/>
							<input name='chanpin.biaozhi' type="hidden" value="1"/>
							</td>
						</tr>
						<tr>
						  <td  align="right" class="STYLE4">下线时间:</td>
							<td ><input name='chanpin.xiatime' type="text" onClick="WdatePicker()" style="width:154px"/>
							</td>
						</tr>
					  </table>
			           <br />
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="查询"/>
			<input type="button" value="返回" onclick="window.history.go(-1);" />
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
