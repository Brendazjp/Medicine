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
<script language="javascript" src="js/WdatePicker.js"></script>
</head>
<body>
<span class="STYLE4">当前页为：查询流失客户信息页</span>
  <form action="liuke!find.action" method="post">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="27" align="right" nowrap class="STYLE4">所属市场编号:</td>
					    <td width="35%"><input name='kehu.shichang.shichangid' type="text" class="text"  style="width:154px"  />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">所属城市:</td>
					    <td width="35%"><input name='kehu.shichang.chengshi' type="text" class="text"  style="width:154px"  />
				        </td>
					   </tr>
					   <tr>	
							<td width="15%" height="33" align="right" nowrap class="STYLE4">客户编号:</td>
						    <td width="35%">
								<input name='kehu.kehuid' type="text" class="text" style="width:154px" /></td>
							<td nowrap align="right" width="18%" class="STYLE4">公司名称:</td>
						 <td width="35%"><textarea name="kehu.kename" cols="45" rows="1" id="textare"></textarea></td>
						</tr>
						<tr>
					    <td width="15%" height="34" align="right" nowrap class="STYLE4">公司性质:</td>
					    <td width="35%"><select name="kehu.xingzhi">
                          <option value="" selected="selected">请选择</option>
                          <option value="国有企业">国有企业</option>
                          <option value="外资企业">外资企业</option>
                          <option value="合资企业">合资企业</option>
                          <option value="私人企业">私人企业</option>
						  <option value="集体企业">集体企业</option>
                          <option value="其他">其他</option>
                        </select></td>
				         <td nowrap align="right" width="18%" class="STYLE4">公司类型:</td>
					     <td width="35%"><select name="kehu.leixing">
                           <option value="" selected="selected">请选择</option>
                           <option value="医院">医院</option>
                           <option value="药店">药店</option>
                           <option value="超市">超市</option>
                           <option value="经销商">经销商</option>
                           <option value="其他">其他</option>
                         </select></td>
						</tr>
						<tr>
						  <td height="29" align="right" nowrap class="STYLE4">联系人电话:</td>
						  <td><input name='kehu.lianphone' type="text" class="text" style="width:154px" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">记录时间:</td>
						  <td><input name='kehu.jilutime' type="text" onClick="WdatePicker()" style="width:154px" /></td>
					    </tr>
						<tr>
						  <td height="28" align="right" nowrap class="STYLE4">公司电话:</td>
						  <td><input name='kehu.gongphone' type="text" class="text" style="width:154px" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">传真号码:</td>
						  <td><input name='kehu.chuanzheng' type="text" class="text" style="width:154px" /></td>
					    </tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">邮政号码:</td>
						  <td><input name='kehu.youbian' type="text" class="text" style="width:154px" /></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">联系人姓名:</td>
						  <td><input name='kehu.lianname' type="text" class="text" style="width:154px" /></td>
					    </tr>
						<tr>
						  <td height="33" align="right" nowrap class="STYLE4">流失时间:</td>
						  <td><input name='kehu.liutime' type="text" onClick="WdatePicker()" style="width:154px" /></td>						 
					    </tr>
					      <input name='kehu.biaozhi' type="hidden" class="text" style="width:154px" value="1"/>
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
