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
<script language="javascript" src="js/WdatePicker.js"></script>
<body>
<span class="STYLE4">当前页为：添加查询竞争公司信息页</span>
  <form action="jingzheng!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>竞争公司信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">竞争公司编号:</td>
					    <td width="35%"><input name='jingzheng.jingid' type="text" class="text"style="width:154px" />
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">竞争公司名称:</td>
					    <td width="35%"><input name='jingzheng.jingname' type="text" class="text" style="width:154px"  />
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">竞争公司类型:</td>
					    <td width="35%"><select name="jingzheng.leixing">
                          <option value="" selected="selected">请选择</option>
                          <option value="合资企业">合资企业</option>
                          <option value="私人企业">私人企业</option>
                          <option value="外资企业">外资企业</option>
                          <option value="国有企业">国有企业</option>
                          <option value="集体企业">集体企业</option>
                          <option value="其他">其他</option>
                          </select></td>
					    <td nowrap align="right" width="18%" class="STYLE4">记录时间:</td>
					     <td width="35%" class="STYLE4"><input name='jingzheng.jilutime' type="text" onClick="WdatePicker()" style="width:154px" /></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">竞争力:</td>
						  <td width="35%">						    <p class="STYLE4">
                          <textarea name='jingzheng.jingzhengli' cols="45" rows="1" id="textare"></textarea>  
					          <span class="STYLE4">(如：品牌力，研发力，制造力，营销力，产品力...)</span>		 </td>
							<td nowrap="nowrap" align="right" class="STYLE4">主销区域:</td>
						  <td><input name='jingzheng.quyu' type="text" class="text" style="width:154px"/></td>
						</tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="查询"/>　
			<input type="reset"  value="重设"/>
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
