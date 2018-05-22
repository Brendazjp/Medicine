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
<script type='text/javascript' src='dwr/interface/test7.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript">
		 function invoke(){ 
            var shichangid = document.getElementById("shichangid");
                 test7.find(shichangid.value,
                    function(data){
                    var mm = document.getElementById("mm");
                    mm.innerHTML=data;
                    }
                 );     
     }
      function on_submit(){
				if(document.getElementById("shichangid").value==""){
					document.getElementById("shichangid1").innerHTML="市场编号不能为空！";
					return false;
				}
				if(document.getElementById("shichangid").value!=""){
					document.getElementById("shichangid1").innerHTML="";
				}
				if(document.getElementById("diqu").value==""){
					document.getElementById("diqu1").innerHTML="请选择所属地区！";
					return false;
				}
				if(document.getElementById("diqu").value!=""){
					document.getElementById("diqu1").innerHTML="";
				}
				if(document.getElementById("chengshi").value==""){
					document.getElementById("chengshi1").innerHTML="所在城市不能为空！";
					return false;
				}
				if(document.getElementById("chengshi").value!=""){
					document.getElementById("chengshi1").innerHTML="";
				}
				if(document.getElementById("jingji").value==""){
					document.getElementById("jingji1").innerHTML="请选择经济情况！";
					return false;
				}
				if(document.getElementById("jingji").value!=""){
					document.getElementById("jingji1").innerHTML="";
				}
				if(document.getElementById("funame").value==""){
					document.getElementById("funame1").innerHTML="负责人姓名不能为空！";
					return false;
				}
				if(document.getElementById("funame").value!=""){
					document.getElementById("funame1").innerHTML="";
				}
				if(document.getElementById("fulianxi").value==""){
					document.getElementById("fulianxi1").innerHTML="负责人联系电话不能为空！";
					return false;
				}
				if(document.getElementById("fulianxi").value!=""){
					var s=document.getElementById("fulianxi").value;
					var v=/^[0-9]{7,12}/
					var f=s.match(v);
					if(f==null){
						document.getElementById("fulianxi1").innerHTML="负责人联系电话为数字，长度为7－12位！";
						return false;
					}
				}
				if(document.getElementById("fulianxi").value!=""){
					document.getElementById("fulianxi1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加市场信息页</span>
  <form action="shichang!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>市场信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td width="15%" height="30" align="right" nowrap class="STYLE4">市场编号:</td>
					    <td width="35%">
					    <input id="shichangid" name='shichang.shichangid' type="text" class="text"  style="width:154px" onblur="invoke();"/>
				        <span id="mm" class="STYLE4"></span>
				        <span id="shichangid1" class="STYLE4"></span>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">&nbsp;</td>
					    <td width="35%">&nbsp;				        </td>
					    </tr>
						
						<tr>
						  <td height="32" align="right" nowrap class="STYLE4">所属地区:</td>
						  <td><select name="shichang.diqu" id="diqu">
                            <option value="" selected="selected" >请选择</option>
                            <option value="东北地区">东北地区</option>
                            <option value="华北地区">华北地区</option>
                            <option value="华东地区">华东地区</option>
                            <option value="华南地区">华南地区</option>
                            <option value="西南地区">西南地区</option>
                            <option value="西北地区">西北地区</option>
                            <option value="中南地区">中南地区</option>
                            <option value="其它地区">其它地区</option>
                          </select>
                          <span id="diqu1" class="STYLE4"></span></td>
						  <td nowrap align="right" class="STYLE4">所在城市:</td>
						  <td><input name='shichang.chengshi' id="chengshi" type="text" class="text" style="width:154px"  />
						  <span id="chengshi1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>
					    <td width="15%" height="32" align="right" nowrap class="STYLE4">经济情况:</td>
					    <td width="35%"><select name="shichang.jingji" id="jingji">
                          <option value="" selected="selected">请选择</option>
                          <option value="发达">发达</option>
                          <option value="比较发达">比较发达</option>
                          <option value="中等">中等</option>
                          <option value="落后">落后</option>
                        </select>
                        <span id="jingji1" class="STYLE4"></span></td>
					    <td nowrap align="right" width="18%" class="STYLE4">重要节日（当地的）:</td>
					     <td width="35%"><input name="shichang.jieri" type="text" class="text" style="width:154px" value="" /></td>	
						</tr>
						<tr>	
							<td width="15%" height="41" align="right" nowrap class="STYLE4">负责人姓名:</td>
						  <td width="35%">
								<input name='shichang.funame' id="funame" type="text" class="text" style="width:154px" />
								<span id="funame1" class="STYLE4"></span>
								</td>
							<td nowrap align="right" width="18%" class="STYLE4">负责人联系电话:</td>
							<td width="35%"><input name='shichang.fulianxi' id="fulianxi" type="text" class="text" style="width:154px" />
							<span id="fulianxi1" class="STYLE4"></span>
							</td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">营销策略:</td>
						  <td><textarea name="shichang.celue" cols="45" rows="4" ></textarea></td>
						  <td nowrap="nowrap" align="right" class="STYLE4">备注:</td>
						  <td><textarea name="shichang.beizhu" cols="45" rows="4" ></textarea></td>
					    </tr>
					  </table>
			           <br />
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
