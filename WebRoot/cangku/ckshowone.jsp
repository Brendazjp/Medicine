<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*" pageEncoding="UTF-8"%>
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
<span class="STYLE4">当前页为：仓库详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>仓库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="48" align="right" nowrap class="STYLE4">仓库名称:</td>
					    <td width="35%"><input name='cangku.ckname' type="text" readonly="readonly" class="text"  style="width:154px" value="${cangku.ckname }"/>
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">仓库地址:</td>
					    <td width="35%"><input name='cangku.dizhi' type="text" readonly="readonly" class="text"  style="width:154px" value="${cangku.dizhi }"/></td>
					  </tr>
						<tr>
					    <td width="15%" height="46" align="right" nowrap class="STYLE4">面积:</td>
					    <td width="35%"><input name='cangku.mianji' type="text" readonly="readonly" class="text" style="width:154px" value="${cangku.mianji }"/>
					      <span class="STYLE4">(平方米)</span></td>
				         <td nowrap align="right" width="18%" class="STYLE4">开始使用时间:</td>
					     <td width="35%"><input name='cangku.shitime' type="text" readonly="readonly" style="width:154px" value="${cangku.shitime }"/></td>
						</tr>
						<tr>
						  <td height="43" align="right" nowrap class="STYLE4">主放产品类型:</td>
						  <td><input name='cangku.chanlei' type="text" class="text" readonly="readonly" style="width:154px" value="${cangku.chanlei }"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">仓库电话:</td>
						  <td><input name='cangku.ckphone' type="text" readonly="readonly" class="text" style="width:154px" value="${cangku.ckphone }"/></td>
					    </tr>
						<tr>
						  <td height="48" align="right" nowrap class="STYLE4">负责人姓名:</td>
						  <td><input name='cangku.fuzeren' type="text" readonly="readonly" class="text" style="width:154px" value="${cangku.fuzeren }"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">负责人电话:</td>
						  <td><input name='cangku.fuphone' type="text" readonly="readonly" class="text" style="width:154px" value="${cangku.fuphone }"/></td>
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
