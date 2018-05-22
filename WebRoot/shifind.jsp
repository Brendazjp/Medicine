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
<span class="STYLE4">当前页为：查询市场信息页</span>
  <form action="shichang!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>市场信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="30" align="right" nowrap class="STYLE4">市场编号:</td>
					    <td width="35%"><input name='shichang.shichangid' type="text" class="text"  style="width:154px" />
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">&nbsp;</td>
					    <td width="35%">&nbsp;				        </td>
					    </tr>
						
						<tr>
						  <td height="32" align="right" nowrap class="STYLE4">所属地区:</td>
						  <td><select name="shichang.diqu">
                            <option value="" selected="selected">请选择</option>
                              <option value="东北地区">东北地区</option>
                            <option value="华北地区">华北地区</option>
                            <option value="华东地区">华东地区</option>
                            <option value="华南地区">华南地区</option>
                            <option value="西南地区">西南地区</option>
                            <option value="西北地区">西北地区</option>
                            <option value="中南地区">中南地区</option>
                            <option value="其它地区">其它地区</option>
                          </select></td>
						  <td nowrap align="right" class="STYLE4">所在城市:</td>
						  <td><input name='shichang.chengshi' type="text" class="text" style="width:154px"  /></td>
					    </tr>
						<tr>
					    <td width="15%" height="32" align="right" nowrap class="STYLE4">经济情况:</td>
					    <td width="35%"><select name="shichang.jingji">
                          <option value="" selected="selected">请选择</option>
                          <option value="发达">发达</option>
                          <option value="比较发达">比较发达</option>
                          <option value="中等">中等</option>
                          <option value="落后">落后</option>
                        </select>					      </td>
					    <td nowrap align="right" width="18%" class="STYLE4">重要节日（当地的）:</td>
					     <td width="35%"><input name="shichang.jieri" type="text" class="text" style="width:154px" value="" /></td>	
						</tr>
						<tr>	
							<td width="15%" height="41" align="right" nowrap class="STYLE4">负责人姓名:</td>
						  <td width="35%">
								<input name='shichang.funame' type="text" class="text" style="width:154px" /></td>
							<td nowrap align="right" width="18%" class="STYLE4">负责人联系电话:</td>
							<td width="35%"><input name='shichang.fulianxi' type="text" class="text" style="width:154px" /></td>
						</tr>
					  </table>
			           <br />
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="查询" />　
			<input type="reset"  value="重设"/>
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
