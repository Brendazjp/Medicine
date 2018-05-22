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
<script type="text/javascript">
   function update()
   {
   if(confirm("你真的想修改该记录么？"))
    {
    return true;
    }
    return false;
   }
</script>
</head>
<script language="javascript" src="js/WdatePicker.js"></script>
<body>
<span class="STYLE4">当前页为：修改营销活动信息页</span>
  <form action="yingxiao!update.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>营销活动信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">营销活动编号:</td>
					    <td width="35%"><input name='yingxiao.yingid' type="text"  class="text" readonly="readonly" style="width:154px" value="${yingxiao.yingid }"  />
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">营销活动名称:</td>
					    <td width="35%"><textarea name="yingxiao.yingname" cols="30" rows="1" id="textare">${yingxiao.yingname }</textarea></td>
					    </tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">营销产品类型:</td>
					    <td width="35%"><select name="yingxiao.chanleixing">
                          <option value="${yingxiao.chanleixing }" selected="selected">${yingxiao.chanleixing }</option>
                                    <option value="中药">中药</option>
									<option value="西药">西药</option>
									<option value="保健品">保健品</option>
									<option value="饮品">饮品</option>
								    <option value="其他">其他</option>
                          </select></td>
					    <td nowrap align="right" width="18%" class="STYLE4">营销活动时间:</td>
					     <td width="35%" class="STYLE4"><input name='yingxiao.yingtime' type="text"  onClick="WdatePicker()" style="width:154px" value="${yingxiao.yingtime }"/></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">负责人姓名:</td>
					        <td width="35%" class="STYLE4"><input name='yingxiao.yingfuname' type="text"  class="text"style="width:154px" value="${yingxiao.yingfuname }" /></td>
						    <td nowrap align="right" width="18%" class="STYLE4">负责人联系电话:</td>
							<td width="35%" class="STYLE4"><input name='yingxiao.yinglianxi' type="text"  class="text"style="width:154px" value="${yingxiao.yinglianxi }" /></td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">参与人数:</td>
						  <td><span class="STYLE4">
						    <input name='yingxiao.yingrenshu' type="text"  class="text" style="width:154px" value="${yingxiao.yingrenshu }" />
						  </span></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">主销区域:</td>
						  <td><span class="STYLE4">
						    <input name='yingxiao.diqu' type="text"  class="text"style="width:154px" value="${yingxiao.diqu }" />
						  </span></td>
					    </tr>
						<tr>	
							<td width="15%" height="20" align="right" class="STYLE4">投入成本:</td>
							<td width="35%"><span class="STYLE4">
							  <input name='yingxiao.chengben' type="text"  class="text"style="width:154px" value="${yingxiao.chengben }" />
							</span></td>
							<td nowrap="nowrap" align="right" class="STYLE4">收益:</td>
							<td><span class="STYLE4">
							  <input name='yingxiao.shouyi' type="text"  class="text"style="width:154px" value="${yingxiao.shouyi }" />
							</span></td>
						</tr>
						<tr>
						  <td height="72" align="right" nowrap="nowrap" class="STYLE4">结果总结:</td>
						  <td colspan="3"><textarea name="yingxiao.zongjie" cols="80" rows="14" id="textare">${yingxiao.zongjie }</textarea></td>
					    </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="修改" onclick="update();"/>
			<input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
