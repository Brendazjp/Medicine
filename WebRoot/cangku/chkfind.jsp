<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*" pageEncoding="UTF-8"%>
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
<span class="STYLE4">当前页为：查询出库基本信息页</span>
  <form action="chuku!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>出库基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="33" align="right" nowrap class="STYLE4">出库编号:</td>
					    <td width="35%">
					     <input name='chuku.ckid' type="text" class="text"  style="width:154px" />
				        </td>
					  </tr>
						<tr>
					    <td width="15%" height="35" align="right" nowrap class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input name='chuku.channame' type="text" class="text" style="width:154px" />
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%">
					     <select name="chuku.ckname">
								    <option value="" selected="selected">请选择</option>
									<c:choose>
										<c:when test="${empty list}">
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="u">
												<option value="${u.ckname}">${u.ckname }</option>	
										   </c:forEach>
										</c:otherwise>
									</c:choose>
						  </select>
						</td>
						</tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">出库类型:</td>
						  <td><select name="chuku.ckleixing">
								    <option value="" selected="selected">请选择</option>
									<option value="发货出库">发货出库</option>
									<option value="过期出库">过期出库</option>									
								    <option value="其他">其他</option>
								</select></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">出库时间:</td>
						  <td><input name='chuku.cktime' type="text" onclick="WdatePicker()" style="width:154px" /></td>
					    </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="查找" />　
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
