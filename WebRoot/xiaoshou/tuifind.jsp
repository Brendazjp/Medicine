<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
<span class="STYLE4">当前页为：查询退单信息页</span>
<form action="tuidan!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>退单信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="59" align="right" nowrap class="STYLE4">订单编号:</td>
					    <td width="35%">
					    <input name='xiaoshou.xiaoid' type="text" class="text"  style="width:154px"  />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">产品名称:</td>
					    <td width="35%"><textarea name="xiaoshou.chanpin.channame" cols="45" rows="1" id="textare"></textarea>
				        </td>
					   </tr>
					   <tr>	
							<td width="15%" height="55" align="right" nowrap class="STYLE4">订单时间:</td>
						    <td width="35%"><input name='xiaoshou.xiaotime' type="text" onclick="WdatePicker()"  style="width:154px" />
					        </td>
					        <td height="55" align="right" nowrap class="STYLE4">客户名称:</td>
					     <td><textarea name="xiaoshou.kehu.kename" cols="45" rows="1" id="textare" ></textarea></td>
					   </tr>
					    <tr>
					          <td height="40" align="right" class="STYLE4">退单时间:</td>
							  <td><input name='xiaoshou.tdtime' type="text" onclick="WdatePicker()" style="width:154px"/></td>
							  <td nowrap="nowrap" align="right" class="STYLE4"></td>
							  <td><input name='xiaoshou.zhuangtai' type="hidden"   style="width:154px" value="退单"/></td>
					    </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
            <input type="submit" value="确定" />
			<input type="button" value="返回" onclick="window.history.go(-1);" />
</TD>
		</TR>		
  </table>
 </form>
</body>
</html>
