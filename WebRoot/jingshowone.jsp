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
<span class="STYLE4">当前页为：竞争公司详细信息页</span>
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>竞争公司信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">竞争公司编号:</td>
					    <td width="35%"><input name='jingzheng.jingid' type="text" readonly="readonly" class="text"style="width:154px" value="${jingzheng.jingid }" />
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">竞争公司名称:</td>
					    <td width="35%"><input name='jingzheng.jingname' type="text" readonly="readonly" class="text" style="width:154px" value="${jingzheng.jingname }"  />
				        </td>
					    </tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">竞争公司类型:</td>
					    <td width="35%"><select name="jingzheng.leixing" >
                          <option value="${jingzheng.leixing }" selected="selected">请选择</option>
                          <option value="合资企业">合资企业</option>
                          <option value="私人企业">私人企业</option>
                          <option value="保健品">独资企业</option>
                          <option value="饮品">国企</option>
                          </select></td>
					    <td nowrap align="right" width="18%" class="STYLE4">记录时间:</td>
					     <td width="35%" class="STYLE4"><input name='jingzheng.jilutime' type="text" readonly="readonly" class="text" style="width:154px" value="${jingzheng.jilutime}"  /></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">竞争力:</td>
						    <td width="35%" class="STYLE4">
                            <textarea name='jingzheng.jingzhengli' cols="45" rows="1" id="textare" readonly="readonly">${jingzheng.jingzhengli}</textarea>  
					          <span class="STYLE4">(如：品牌力，研发力，制造力，营销力，产品力...)</span></td>
						    <td nowrap align="right" width="18%" class="STYLE4">竞争公司地址:</td>
							<td width="35%"><textarea name="jingzheng.dizhi" cols="45" rows="2" id="textare" readonly="readonly">${jingzheng.dizhi }</textarea></td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">主销产品:</td>
						  <td><textarea name="jingzheng.chanpin" cols="45" rows="4" id="textare" readonly="readonly">${jingzheng.chanpin }</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">主销区域:</td>
						  <td><textarea name="jingzheng.quyu" cols="45" rows="4" id="textare" readonly="readonly">${jingzheng.quyu }</textarea></td>
					    </tr>
						<tr>	
							<td width="15%" height="72" align="right" class="STYLE4">主销策略:</td>
							<td width="35%"><textarea name="jingzheng.celue" cols="45" rows="4" id="textare" readonly="readonly">${jingzheng.celue }</textarea></td>
							<td nowrap="nowrap" align="right" class="STYLE4">发展状况:</td>
							<td><textarea name="jingzheng.zhuangkuang" cols="45" rows="4" id="textare" readonly="readonly">${jingzheng.zhuangkuang }</textarea></td>
						</tr>
						<tr>
						  <td height="72" align="right" nowrap="nowrap" class="STYLE4">公司背景:</td>
						  <td><textarea name="jingzheng.beijing" cols="45" rows="4" id="textare" readonly="readonly">${jingzheng.beijing }</textarea></td>
						  <td  align="right" class="STYLE4">备注:</td>
						  <td ><textarea name="jingzheng.beizhu" cols="45" rows="4" id="textare" readonly="readonly">${jingzheng.beizhu }</textarea></td>
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
