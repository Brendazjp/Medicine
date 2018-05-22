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
<script type="text/javascript">
   function on_submit(){
				if(isNaN(document.getElementById("shuliang").value)){
					alert("库存数量为数字！");
					return false;
				}
				if(isNaN(document.getElementById("yujingzhi").value)){
					alert("预警值为数字！");
					return false;
				}
				
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：修改库存基本信息页</span>
  <form action="kucun!update.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>库存基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="48" align="right" nowrap class="STYLE4">库存编号:</td>
					    <td width="35%">
					     <input name='kucun.kcid' readonly="readonly" type="text" class="text"  style="width:154px" value="${kucun.kcid}"/>
				        </td>
					   <td width="15%" height="60" align="right" nowrap class="STYLE4">产品名称:</td>
					    <td width="35%">
					    <input name='kucun.channame' readonly="readonly" type="text" class="text" style="width:154px" value="${kucun.channame }"/>
					    </td>
					  </tr>
						<tr>
					    <td width="15%" height="60" align="right" nowrap class="STYLE4">预警值:</td>
					    <td width="35%">
					    <input id="yujingzhi" name='kucun.yujingzhi' type="text" class="text" style="width:154px" value="${kucun.yujingzhi }"/>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%">
					            <select name="kucun.ckname">
								    <option value="${kucun.ckname }" selected="selected">${kucun.ckname }</option>
									<c:choose>
										<c:when test="${empty list}">
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="u">
												<option value="${u.ckname }">${u.ckname }</option>	
										   </c:forEach>
										</c:otherwise>
									</c:choose>
								</select>
						</td>
						</tr>
						<tr>
						  <td height="53" align="right" nowrap class="STYLE4">库存数量:</td>
						  <td><input name='kucun.shuliang' id="shuliang" type="text"  class="text" style="width:154px" value="${kucun.shuliang }"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">进住时间:</td>
						  <td><input name='kucun.jztime' type="text" onclick="WdatePicker()" style="width:154px" value="${kucun.jztime }"/></td>
					    </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="修改" />
			<input type="button" value="返回" onclick="window.history.go(-1);" />
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
