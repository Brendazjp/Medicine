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
        <script language="javascript" src="js/WdatePicker.js"></script>
        <script type='text/javascript' src='dwr/interface/test1.js'></script>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript">
     function invoke(){ 
     var kehuid = document.getElementById("kehuid");
                 test1.findKehu1(kehuid.value,
                    function(data){
                    var cust = document.getElementById("cust");
                    cust.innerHTML=data;
                    }
                 );     
     }
      function aa(){
      var jiage = document.getElementById("jiage");
      var shuliang = document.getElementById("shuliang");
      var jine = document.getElementById("jine");
      var shijine = document.getElementById("shijine");
      jine.value=jiage.value*shuliang.value;
      shijine.value=jiage.value*shuliang.value;
     }
     function bb(){
      var jiage = document.getElementById("jiage");
      var shuliang = document.getElementById("shuliang");
      var zherang = document.getElementById("zherang");
      var shijine = document.getElementById("shijine");
      shijine.value=(jiage.value*shuliang.value*(1-zherang.value/10));
     }
     function on_submit(){
				if(document.getElementById("kehuid").value==""){
					document.getElementById("kehuid1").innerHTML="客户编号不能为空！";
					return false;
				}
				if(document.getElementById("kehuid").value!=""){
					document.getElementById("kehuid1").innerHTML="";
				}
				if(document.getElementById("shuliang").value==""){
					document.getElementById("shuliang1").innerHTML="数量不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("shuliang").value)){
					document.getElementById("shuliang1").innerHTML="数量为数字！";
					return false;
				}
				if(document.getElementById("shuliang").value!=""){
					document.getElementById("shuliang1").innerHTML="";
				}
				if(isNaN(document.getElementById("zherang").value)){
					document.getElementById("zherang1").innerHTML="折让为数字！";
					return false;
				}
				if(document.getElementById("zherang").value!=""){
					document.getElementById("zherang1").innerHTML="";
				}
				if(document.getElementById("wdaibiao").value==""){
					document.getElementById("wdaibiao1").innerHTML="我方经手人不能为空！";
					return false;
				}
				if(document.getElementById("wdaibiao").value!=""){
					document.getElementById("wdaibiao1").innerHTML="";
				}
				if(document.getElementById("kdaibiao").value==""){
					document.getElementById("kdaibiao1").innerHTML="客户方经手人不能为空！";
					return false;
				}
				if(document.getElementById("kdaibiao").value!=""){
					document.getElementById("kdaibiao1").innerHTML="";
				}
				if(document.getElementById("xiaotime").value==""){
					document.getElementById("xiaotime1").innerHTML="订单时间不能为空！";
					return false;
				}
				if(document.getElementById("xiaotime").value!=""){
					document.getElementById("xiaotime1").innerHTML="";
				}
				if(document.getElementById("beizhu").value==""){
					document.getElementById("beizhu1").innerHTML="备注！";
					return false;
				}
				if(document.getElementById("beizhu").value!=""){
					document.getElementById("beizhu1").innerHTML="";
				}
				
				alert('增加成功！');
				return true;
			}

</script>

</head>
<body>
<span class="STYLE4">当前页为：添加订单信息页</span>
  <form action="xiaoshou!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>客户信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="20" align="right" nowrap class="STYLE4">订单编号:</td>
					    <td width="35%">
					    <%
					    Date dd=new Date();
				         StringBuffer sb=new StringBuffer();
				         sb.append("dd").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					    %>
					    <input name='xiaoshou.xiaoid' type="text" class="text" readonly="readonly" style="width:154px" value="<%=sb.toString() %>" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">产品名称:</td>
					    <td width="35%"><textarea name="channame" cols="45" rows="1" id="textare" readonly="readonly">${chanpin.channame }</textarea>
				        </td>
					   </tr>
					   <tr>	
							<td width="15%" height="20" align="right" nowrap class="STYLE4">客户编号:</td>
						    <td width="35%">
								<input name='xiaoshou.kehu.kehuid' type="text" id="kehuid" class="text" style="width:154px" onblur="invoke();"/>
								<span id="cust" class="STYLE4"></span>
								<span id="kehuid1" class="STYLE4"></span>
						 </td>
							<td nowrap align="right" width="18%" class="STYLE4">批发价格:</td>
						    <td width="35%"><input  name='jiage'  type="text" readonly="readonly" class="text" style="width:154px" value="${chanpin.jiage }"/>
					        <span class="STYLE4">（箱/元）</span>
					        </td>
					   </tr>
					   
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">数量:</td>
					    <td width="35%"><input id="shuliang" name='xiaoshou.shuliang' type="text" class="text" style="width:154px" onblur="aa();"  />
					    <span id="shuliang1" class="STYLE4"></span>
					    </td>
					    <td nowrap align="right" width="18%" class="STYLE4">金额:</td>
					     <td width="35%"><input id="jine" name='xiaoshou.jine' type="text" readonly="readonly" class="text" style="width:154px" /></td>
						</tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">折让:</td>
						  <td><input id="zherang" name='xiaoshou.zherang' type="text" class="text"  value="0" style="width:154px" onblur="bb();"/>
						  <span id="zherang1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">实收金额:</td>
						  <td><input id="shijine" name='xiaoshou.shijine' type="text" class="text" readonly="readonly" style="width:154px" /></td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">我方经手人:</td>
						  <td><input name='xiaoshou.wdaibiao' id="wdaibiao" type="text" class="text" style="width:154px" />
						  <span id="wdaibiao1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">客户方经手人:</td>
						  <td><input name='xiaoshou.kdaibiao' id="kdaibiao" type="text" class="text" style="width:154px" />
						  <span id="kdaibiao1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">订单时间:</td>
						  <td><input name='xiaoshou.xiaotime' id="xiaotime" type="text" onclick="WdatePicker()" style="width:154px" />
						  <span id="xiaotime1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注:</td>
						  <td><textarea name="xiaoshou.beizhu"  cols="45" rows="6" id="beizhu"></textarea>
						  <span id="beizhu1" class="STYLE4"></span>
						  </td>
					    </tr>
					      <input name='xiaoshou.zhuangtai' type="hidden" class="text" style="width:154px" value="等待审批"/>
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
