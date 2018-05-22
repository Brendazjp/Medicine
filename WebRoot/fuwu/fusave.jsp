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
<script language="javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
function on_submit(){
				if(document.getElementById("fuleibei").value==""){
					document.getElementById("fuleibei1").innerHTML="请选择服务类别！";
					return false;
				}
				if(document.getElementById("fuleibei").value!=""){
					document.getElementById("fuleibei1").innerHTML="";
				}
				if(document.getElementById("futime").value==""){
					document.getElementById("futime1").innerHTML="记录时间不能为空！";
					return false;
				}
				if(document.getElementById("futime").value!=""){
					document.getElementById("futime1").innerHTML="";
				}
				if(document.getElementById("jiluren").value==""){
					document.getElementById("jiluren1").innerHTML="记录人姓名不能为空！";
					return false;
				}
				if(document.getElementById("jiluren").value!=""){
					document.getElementById("jiluren1").innerHTML="";
				}
				if(document.getElementById("neirong").value==""){
					document.getElementById("neirong1").innerHTML="服务内容不能为空！";
					return false;
				}
				if(document.getElementById("neirong").value!=""){
					document.getElementById("neirong1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加客户服务信息页</span>
  <form action="fuwu!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户服务信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="20" align="right" nowrap class="STYLE4">客户编号:</td>
					    <td width="35%"><input name='kehuid' type="text" class="text" readonly="readonly" style="width:154px" value="${kehu.kehuid}" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">客户公司名称:</td>
					    <td width="35%"><textarea name="kename" cols="45" rows="1" id="textare" readonly="readonly">${kehu.kename }</textarea></td>
					   </tr>
				      <tr>	
							<td width="15%" height="20" align="right" nowrap class="STYLE4">服务编号:</td>
						    <td width="35%">
						    <%
						    Date dd=new Date();
					         StringBuffer sb=new StringBuffer();
					         sb.append("fw").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
						     %>
								<input name='fuwu.fuwuid' type="text" readonly="readonly" class="text" style="width:154px" value="<%=sb.toString() %>"/></td>
							<td nowrap align="right" width="18%" class="STYLE4">服务类别:</td>
						 <td width="35%"><select name="fuwu.fuleibei" id="fuleibei">
                           <option value="" selected="selected">请选择</option>
                           <option value="0">客户投诉</option>
                           <option value="1">客户咨询</option>
                           <option value="2">客户回访</option>
                         </select>
                         <span id="fuleibei1" class="STYLE4"></span>
                         </td>
						</tr>
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">记录时间:</td>
					    <td width="35%"><input name='fuwu.futime' id="futime" type="text" onClick="WdatePicker()" style="width:154px" />
					    <span id="futime1" class="STYLE4"></span>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">记录人姓名:</td>
					     <td width="35%"><input name='fuwu.jiluren' id="jiluren" type="text" class="text" style="width:154px" />
					     <span id="jiluren1" class="STYLE4"></span>
					     </td>
						</tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">服务内容:</td>
						  <td><textarea name="fuwu.neirong" cols="45" rows="6" id="neirong"></textarea>
						  <span id="neirong1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">处理方法:</td>
						  <td><textarea name="fuwu.fangfa" cols="45" rows="6" id="textare"></textarea></td>
					    </tr>
						<tr>
						  <td height="111" align="right" nowrap class="STYLE4">处理结果:</td>
						  <td><textarea name="fuwu.jieguo" cols="45" rows="6" id="textare"></textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注:</td>
						  <td><textarea name="fuwu.beizhu" cols="45" rows="6" id="textare"></textarea></td>
					    </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="确定" />　
			<input type="reset"  value="重设"/>
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
