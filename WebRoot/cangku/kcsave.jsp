<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*" pageEncoding="UTF-8"%>
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
<script language="javascript" src="js/WdatePicker.js"></script>
        <script type='text/javascript' src='dwr/interface/test2.js'></script>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/util.js'></script>
		<script type="text/javascript">
     function invoke(){ 
     var chanid = document.getElementById("chanid");
                 test2.findchanpin1(chanid.value,
                    function(data){
                    var cust = document.getElementById("cust");
                    cust.innerHTML=data;
                    }
                 );     
     }
     function on_submit(){
				if(document.getElementById("chanid").value==""){
					document.getElementById("chanid1").innerHTML="产品编号不能为空！";
					return false;
				}
				if(document.getElementById("chanid").value!=""){
					document.getElementById("chanid1").innerHTML="";
				}
				if(document.getElementById("yujingzhi").value==""){
					document.getElementById("yujingzhi1").innerHTML="预警值不能为空！";
					return false;
				}
				if(isNaN(document.getElementById("yujingzhi").value)){
					document.getElementById("yujingzhi1").innerHTML="预警值为数字！";
					return false;
				}
				if((!isNaN(document.getElementById("yujingzhi").value))||document.getElementById("yujingzhi").value!=""){
					document.getElementById("yujingzhi1").innerHTML="";
				}
				if(document.getElementById("ckname").value==""){
					document.getElementById("ckname1").innerHTML="请选择仓库！";
					return false;
				}
				if(document.getElementById("ckname").value!=""){
					document.getElementById("ckname1").innerHTML="";
				}
				if(document.getElementById("jztime").value==""){
					document.getElementById("jztime1").innerHTML="进住时间不能为空！";
					return false;
				}
				if(document.getElementById("jztime").value!=""){
					document.getElementById("jztime1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}

</script>
</head>
<body>
<span class="STYLE4">当前页为：添加库存基本信息页</span>
  <form action="kucun!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>库存基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="48" align="right" nowrap class="STYLE4">库存编号:</td>
					    <td width="35%">
					      <%
					         Date dd=new Date();
					         StringBuffer sb=new StringBuffer();
					         sb.append("kc").append((Integer)dd.getYear()+1900).append((Integer)dd.getMonth()+1).append(dd.getDate()).append(dd.getHours()).append(dd.getMinutes()).append(dd.getSeconds());
					     %>
					     <input name='kucun.kcid' readonly="readonly" type="text" class="text"  style="width:154px" value="<%=sb.toString()%>"/>
				        </td>
					    <td width="15%" height="60" align="right" nowrap class="STYLE4">产品编号:</td>
					    <td width="35%">
					    <input name='kucun.channame' id="chanid" type="text" class="text" style="width:154px" onblur="invoke();"/>
					    <span id="cust" class="STYLE4"></span>
					    <span id="chanid1" class="STYLE4"></span>
					    </td>
					  </tr>
						<tr>
					    <td height="53" align="right" nowrap class="STYLE4">预警值:</td>
						 <td><input id="yujingzhi" name='kucun.yujingzhi' type="text"  class="text" style="width:154px" />
					    <span id="yujingzhi1" class="STYLE4"></span>
					    </td>
				         <td nowrap align="right" width="18%" class="STYLE4">仓库名称:</td>
					     <td width="35%">
					            <select name="kucun.ckname" id="ckname">
								    <option value="" selected="selected">请选择</option>
									<c:choose>
										<c:when test="${empty list}">
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="u">
												<option value="${u.ckname }">${u.ckname }</option>	
										   </c:forEach>
										</c:otherwise>
									</c:choose>
								</select>
								<span id="ckname1" class="STYLE4"></span>
						</td>
						</tr>
						<tr>
						  <td height="53" align="right" nowrap class="STYLE4">库存数量:</td>
						  <td><input name='kucun.shuliang' type="text" readonly="readonly" class="text" style="width:154px" value="0"/></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">进住时间:</td>
						  <td><input name='kucun.jztime' id="jztime" type="text" onclick="WdatePicker()" style="width:154px" />
						  <span id="jztime1" class="STYLE4"></span>
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
