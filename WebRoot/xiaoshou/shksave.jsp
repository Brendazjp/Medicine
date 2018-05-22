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
        <script type='text/javascript' src='../dwr/interface/test3.js'></script>
		<script type='text/javascript' src='../dwr/engine.js'></script>
		<script type='text/javascript' src='../dwr/util.js'></script>
<script type="text/javascript">
		 function invoke(){ 
          var xiaoid = document.getElementById("xiaoid");
          var xiaoshou = {};
          xiaoshou.shijine="";
          xiaoshou.fatime="";
                 test3.finddwr(xiaoid.value,
                    function(data){
                    if(null==data){
                    var cust = document.getElementById("cust");
                    cust.innerHTML="不存在或不存在收款状态";
                    }else{
                          xiaoshou=data;
                          var yingtime= document.getElementById("yingtime");
                          var yingjine= document.getElementById("yingjine");
                    	  yingtime.value=xiaoshou.fatime;
                    	  yingjine.value=xiaoshou.shijine;
                    }
                    if(null!=data){
                    var cust = document.getElementById("cust");
                    cust.innerHTML="";
                    }
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
				if(document.getElementById("shitime").value==""){
					document.getElementById("shitime1").innerHTML="实收时间不能为空！";
					return false;
				}
				if(document.getElementById("shitime").value!=""){
					document.getElementById("shitime1").innerHTML="";
				}
				if(document.getElementById("shijine").value==""){
					document.getElementById("shijine1").innerHTML="实收金额不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("shijine").value)){
					document.getElementById("shijine1").innerHTML="实收金额为数字！";
					return false;
				}
				if(document.getElementById("shijine").value!=""){
					document.getElementById("shijine1").innerHTML="";
				}
				if(document.getElementById("xinyupf").value==""){
					document.getElementById("xinyupf1").innerHTML="请选择信誉评分！";
					return false;
				}
				if(document.getElementById("xinyupf").value!=""){
					document.getElementById("xinyupf1").innerHTML="";
				}
				if(document.getElementById("shoukuanren").value==""){
					document.getElementById("shoukuanren1").innerHTML="收款人不能为空！";
					return false;
				}
				if(document.getElementById("shoukuanren").value!=""){
					document.getElementById("shoukuanren1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>

</head>
<body>
<span class="STYLE4">当前页为：添加收款信息页</span>
  <form action="shoukuan!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>收款信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="40" align="right" nowrap class="STYLE4">收款编号:</td>
					    <td width="35%">
					    <%
					    Date dd=new Date();
				         StringBuffer sb=new StringBuffer();
				         sb.append("shk").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					    %>
					    <input name='shoukuan.shoukuanid' type="text" class="text" readonly="readonly" style="width:154px" value="<%=sb.toString() %>" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">定单编号:</td>
					    <td width="35%"><input name='xiaoid' type="text" id="xiaoid" class="text" style="width:154px" onblur="invoke();"/>
					    <span id="cust" class="STYLE4"></span>
					    <span id="xiaoid1" class="STYLE4"></span>
					    </td>
					   </tr>
					   <tr>	
							<td width="15%" height="45" align="right" nowrap class="STYLE4">应收时间:</td>
						    <td width="35%">
								<input name='yingtime' type="text" readonly="readonly" id="yingtime" class="text" style="width:154px"/>
						 </td>
							<td nowrap align="right" width="18%" class="STYLE4">实收时间:</td>
						    <td width="35%"><input id="shitime"  name='shoukuan.shitime' onclick="WdatePicker()" type="text"  class="text" style="width:154px" />	
						    <span id="shitime1" class="STYLE4"></span>
						     </td>
					   </tr>
					   
						<tr>
					    <td width="15%" height="35" align="right" nowrap class="STYLE4">应收金额:</td>
					    <td width="35%"><input id="yingjine" name='yingjine' readonly="readonly" type="text" class="text" style="width:154px"/>
					      <span class="STYLE4">（元）</span></td>
					    <td nowrap align="right" width="18%" class="STYLE4">实收金额:</td>
					     <td width="35%"><input id="shijine" name='shoukuan.shijine' type="text"  class="text" style="width:154px" />
				          <span class="STYLE4">（元）</span>
				          <span id="shijine1" class="STYLE4"></span></td>
						</tr>
						<tr>
						  <td height="50" align="right" nowrap class="STYLE4">信誉评分:</td>
						  <td>
						        <select id="xinyupf" name='shoukuan.xinyupf'>
									<option value="" selected="selected">请选择</option>
									<option value="2">加2分</option>
									<option value="1">加1分</option>
									<option value="-1">减1分</option>
									<option value="-2">减2分</option>
								</select>
									<span id="xinyupf1" class="STYLE4"></span>
								</td>	
						  <td nowrap="nowrap" align="right" class="STYLE4">收款人:</td>
						  <td><input id="shoukuanren" name='shoukuan.shoukuanren' type="text" class="text"  style="width:154px" />
						  <span id="shoukuanren1" class="STYLE4"></span>
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
