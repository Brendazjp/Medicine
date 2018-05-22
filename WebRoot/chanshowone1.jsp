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
<script type="text/javascript">
   function on_submit(){
				if(isNaN(document.getElementById("jiage").value)){
					alert("批发价格为数字！");
					return false;
				}
			}
</script>
<script language="javascript" src="js/WdatePicker.js"></script>
</head>
<body>
<span class="STYLE4">当前页为：修改产品信息页</span>
  <form action="chanpin!update.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>产品信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">产品编号:</td>
					    <td width="35%"><input name='chanpin.chanid' type="text" class="text"  style="width:154px" readonly="readonly" value="${chanpin.chanid }"/>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">产品名称:</td>
					    <td width="35%"><input name='chanpin.channame' type="text" class="text" style="width:154px" value="${chanpin.channame}" />
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">批准文号:</td>
					    <td width="35%"><input name='chanpin.piwenhao' type="text" class="text" style="width:154px" value="${chanpin.piwenhao}"/></td>
				         <td nowrap align="right" width="18%" class="STYLE4">规格:</td>
					     <td width="35%"><input name='chanpin.guige' type="text" class="text" style="width:154px" value="${chanpin.guige}" /></td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">产品类型:</td>
							<td width="35%">
								<select name="chanpin.leixing">
									<option value="${chanpin.leixing}" selected="selected">${chanpin.leixing}</option>
									<option value="中药">中药</option>
									<option value="西药">西药</option>
									<option value="保健品">保健品</option>
									<option value="饮品">饮品</option>
								    <option value="其他">其他</option>
								</select>							</td>
							<td nowrap align="right" width="18%" class="STYLE4">产品剂型:</td>
							<td width="35%"><select name="chanpin.jixing">
                              <option value="${chanpin.jixing}" selected="selected">${chanpin.jixing}</option>
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
						  <td height="23" align="right" nowrap class="STYLE4">批发价格:</td>
						  <td><input name='chanpin.jiage' id="jiage" type="text" class="text" style="width:154px" value="${chanpin.jiage}"/>
					      <span class="STYLE4">（箱/元）</span></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">&nbsp;</td>
						  <td>&nbsp;</td>
					    </tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">功能主治:</td>
						  <td><textarea name="chanpin.gongneng" cols="45" rows="3" id="textare">${chanpin.gongneng}</textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">用法用量:</td>
						  <td><textarea name="chanpin.yongfa" cols="45" rows="3" id="textare">${chanpin.yongfa}</textarea></td>
					    </tr>
						<tr>	
							<td width="15%" height="59" align="right" class="STYLE4">主要成份:</td>
							<td width="35%"><textarea name="chanpin.chengfen" cols="45" rows="3" id="textare">${chanpin.chengfen}</textarea></td>
							<td nowrap="nowrap" align="right" class="STYLE4">不良反应:</td>
							<td><textarea name="chanpin.buliang" cols="45" rows="3" id="textare">${chanpin.buliang}</textarea></td>
						</tr>
						<tr>

						  <td height="59" align="right" nowrap="nowrap" class="STYLE4">禁忌:</td>
						  <td><textarea name="chanpin.jinji" cols="45" rows="3" id="textare">${chanpin.jinji}</textarea></td>
						  <td  align="right" class="STYLE4">注意事项:</td>
						  <td ><textarea name="chanpin.zhuyi" cols="45" rows="3" id="textare">${chanpin.zhuyi}</textarea></td>
					    </tr>
						<tr>
						  <td height="20" align="right" nowrap="nowrap" class="STYLE4">有效期:</td>
						  <td><input name='chanpin.youxiaoqi' type="text" class="text" style="width:154px"  value="${chanpin.youxiaoqi }"/></td>
						  <td  align="right" class="STYLE4">上线时间:</td>
							<td ><input name='chanpin.shangtime' type="text" onClick="WdatePicker()" style="width:154px" value="${chanpin.shangtime }"/>
							<input name='chanpin.biaozhi' type="hidden" value="${chanpin.biaozhi }"/>
							<input name='chanpin.id' type="hidden" value="${chanpin.id }"/>
							</td>
						</tr>
						<tr>
						<c:if test="${!empty chanpin.xiatime}">
						  <td height="72" align="right" nowrap="nowrap" class="STYLE4">下线时间:</td>
						  <td>
						      <input name='chanpin.xiatime' type="text" onClick="WdatePicker()" style="width:154px" value="${chanpin.xiatime}"/>
						  </td>
						 </c:if>
						 <c:if test="${!empty chanpin.xiayanyin}">
						  <td  align="right" class="STYLE4">下线原因:</td>
						  <td >
						      <textarea name="chanpin.xiayanyin" cols="45" rows="3" id="textare" >${chanpin.xiayanyin}</textarea>
						  </td>
						  </c:if>
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
