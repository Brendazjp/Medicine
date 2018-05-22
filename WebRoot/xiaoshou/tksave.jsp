<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
        <script language="javascript" src="../js/WdatePicker.js"></script>
        <script type='text/javascript' src='../dwr/interface/test4.js'></script>
		<script type='text/javascript' src='../dwr/engine.js'></script>
		<script type='text/javascript' src='../dwr/util.js'></script>
<script type="text/javascript">
     function invoke(){ 
     var xiaoid = document.getElementById("xiaoid");
                 test4.finddwr(xiaoid.value,
                    function(data){
                    var cust = document.getElementById("cust");
                    cust.innerHTML=data;
                    }
                 );     
     }
     function on_submit(){
				if(document.getElementById("xiaoid").value==""){
					document.getElementById("xiaoid1").innerHTML="定单编号不能为空！";
					return false;
				}
				if(document.getElementById("xiaoid").value!=""){
					document.getElementById("xiaoid1").innerHTML="";
				}
				if(document.getElementById("tkuantime").value==""){
					document.getElementById("tkuantime1").innerHTML="退款时间不能为空！";
					return false;
				}
				if(document.getElementById("tkuantime").value!=""){
					document.getElementById("tkuantime1").innerHTML="";
				}
				if(document.getElementById("tkuanjine").value==""){
					document.getElementById("tkuanjine1").innerHTML="退款金额不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("tkuanjine").value)){
					document.getElementById("tkuanjine1").innerHTML="退款金额为数字！";
					return false;
				}
				if(document.getElementById("tkuanjine").value!=""){
					document.getElementById("tkuanjine1").innerHTML="";
				}
				if(document.getElementById("tkuanren").value==""){
					document.getElementById("tkuanren1").innerHTML="办理人不能为空！";
					return false;
				}
				if(document.getElementById("tkuanren").value!=""){
					document.getElementById("tkuanren1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>

</head>
<body>
<span class="STYLE4">当前页为：添加退款信息页</span>
  <form action="tuikuan!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>退款信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="44" align="right" nowrap class="STYLE4">退款编号:</td>
					    <td width="35%">
					    <%
					    Date dd=new Date();
				         StringBuffer sb=new StringBuffer();
				         sb.append("tk").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					    %>
					    <input name='tuikuan.tkuanid' type="text" class="text" readonly="readonly" style="width:154px" value="<%=sb.toString() %>" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">&nbsp;</td>
					    <td width="35%">&nbsp;</td>
					  </tr>
					   <tr>	
							<td width="15%" height="54" align="right" nowrap class="STYLE4">定单编号:</td>
						    <td width="35%">
								<input name='xiaoid' type="text" id="xiaoid" class="text" style="width:154px" onblur="invoke();"/>
							  <span id="cust" class="STYLE4"></span>
							  <span id="xiaoid1" class="STYLE4"></span>
						 </td>
							<td nowrap align="right" width="18%" class="STYLE4">退款时间:</td>
						    <td width="35%"><input id="tkuantime"  name='tuikuan.tkuantime' type="text" onClick="WdatePicker()"  class="text" style="width:154px" /> 
						    <span id="tkuantime1" class="STYLE4"></span>
						    </td>
					   </tr>
					   
						<tr>
					    <td width="15%" height="45" align="right" nowrap class="STYLE4">退款金额:</td>
					    <td width="35%"><input id="tkuanjine" name='tuikuan.tkuanjine' type="text" class="text" style="width:154px"   />
					      <span class="STYLE4">（元）</span>
					      <span id="tkuanjine1" class="STYLE4"></span>
					      </td>
					    <td nowrap align="right" width="18%" class="STYLE4">办理人:</td>
					     <td width="35%"><input id="tkuanren" name='tuikuan.tkuanren' type="text" class="text"  style="width:154px" />
					     <span id="tkuanren1" class="STYLE4"></span>
					     </td>
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
