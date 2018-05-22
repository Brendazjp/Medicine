<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
				if(isNaN(document.getElementById("shuliang").value)){
					alert("数量为数字！");
					return false;
				}
				if(isNaN(document.getElementById("zherang").value)){
					alert("折让为数字！");
					return false;
				}
			}
</script>
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
      var zherang = document.getElementById("zherang");
      var shijine = document.getElementById("shijine");
      jine.value=jiage.value*shuliang.value;
      shijine.value=(jiage.value*shuliang.value*(1-zherang.value/10));
     }
     function bb(){
      var jiage = document.getElementById("jiage");
      var shuliang = document.getElementById("shuliang");
      var zherang = document.getElementById("zherang");
      var shijine = document.getElementById("shijine");
      shijine.value=(jiage.value*shuliang.value*(1-zherang.value/10));
     }
</script>

</head>
<body>
<span class="STYLE4">当前页为：修改订单信息页</span>
<form action="xiaoshou!update.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>订单信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="20" align="right" nowrap class="STYLE4">订单编号:</td>
					    <td width="35%">
					    <input name='xiaoshou.xiaoid' type="text" class="text" readonly="readonly" style="width:154px" value="${xiaoshou.xiaoid }" />
				        </td>
					    <td nowrap align="right" width="18%" class="STYLE4">产品名称:</td>
					    <td width="35%"><textarea name="channame" cols="45" rows="1" id="textare" readonly="readonly">${xiaoshou.chanpin.channame }</textarea>
				        </td>
					   </tr>
					   <tr>	
					        <td nowrap align="right" width="18%" class="STYLE4">批发价格:</td>
						    <td width="35%"><input id="jiage"  name='jiage' type="text" readonly="readonly" class="text" style="width:154px" value="${xiaoshou.chanpin.jiage }"/>
					        <span class="STYLE4">（箱/元）</span></td>
							<td width="15%" height="20" align="right" nowrap class="STYLE4">客户名称:</td>
						    <td width="35%">
						        <textarea name="kename" cols="45" rows="1" id="textare" readonly="readonly">${xiaoshou.kehu.kename}</textarea>
								<span id="cust" class="STYLE4"></span>
						 </td>
							
					   </tr>
					   
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">数量:</td>
					    <td width="35%"><input id="shuliang" name='xiaoshou.shuliang'  type="text" class="text" style="width:154px" value="${xiaoshou.shuliang }" onblur="aa();" /></td>
					    <td nowrap align="right" width="18%" class="STYLE4">金额:</td>
					     <td width="35%"><input id="jine" name='xiaoshou.jine' type="text" readonly="readonly" class="text" style="width:154px" value="${xiaoshou.jine }"/></td>
						</tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">折让:</td>
						  <td><input id="zherang" name='xiaoshou.zherang' type="text" class="text" style="width:154px" value="${xiaoshou.zherang }" onblur="bb();"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">实收金额:</td>
						  <td><input id="shijine" name='xiaoshou.shijine' type="text" class="text" readonly="readonly" style="width:154px" value="${xiaoshou.shijine }"/></td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">我方经手人:</td>
						  <td><input name='xiaoshou.wdaibiao' type="text" class="text"  style="width:154px" value="${xiaoshou.wdaibiao }"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">客户方经手人:</td>
						  <td><input name='xiaoshou.kdaibiao' type="text" class="text"  style="width:154px" value="${xiaoshou.kdaibiao }"/></td>
					    </tr>
						<tr>
						  <td height="17" align="right" nowrap class="STYLE4">订单时间:</td>
						  <td><input name='xiaoshou.xiaotime' type="text" onclick="WdatePicker()" style="width:154px" value="${xiaoshou.xiaotime }"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注:</td>
						  <td><textarea name="xiaoshou.beizhu" cols="45" rows="6" id="textare">${xiaoshou.beizhu }</textarea></td>
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
