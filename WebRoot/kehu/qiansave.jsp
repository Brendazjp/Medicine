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
<script language="javascript" src="../js/WdatePicker.js"></script>
<script type='text/javascript' src='../dwr/interface/test10.js'></script>
<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type="text/javascript">
		 function invoke(){ 
            var qianid = document.getElementById("qianid");
                 test10.find(qianid.value,
                    function(data){
                    var mm = document.getElementById("mm");
                    mm.innerHTML=data;
                    }
                 );     
     }
     function on_submit(){
				if(document.getElementById("qianid").value==""){
					document.getElementById("qianid1").innerHTML="潜在客户编号不能为空！";
					return false;
				}
				if(document.getElementById("qianid").value!=""){
					document.getElementById("qianid1").innerHTML="";
				}
				if(document.getElementById("qianname").value==""){
					document.getElementById("qianname1").innerHTML="公司名称不能为空！";
					return false;
				}
				if(document.getElementById("qianname").value!=""){
					document.getElementById("qianname1").innerHTML="";
				}
				if(document.getElementById("xingzhi").value==""){
					document.getElementById("xingzhi1").innerHTML="请选择公司性质！";
					return false;
				}
				if(document.getElementById("xingzhi").value!=""){
					document.getElementById("xingzhi1").innerHTML="";
				}
				if(document.getElementById("jilutime").value==""){
					document.getElementById("jilutime1").innerHTML="记录时间不能为空！";
					return false;
				}
				if(document.getElementById("jilutime").value!=""){
					document.getElementById("jilutime1").innerHTML="";
				}
				if(document.getElementById("chengshi").value==""){
					document.getElementById("chengshi1").innerHTML="所在城市不能为空！";
					return false;
				}
				if(document.getElementById("chengshi").value!=""){
					document.getElementById("chengshi1").innerHTML="";
				}
				if(document.getElementById("leixing").value==""){
					document.getElementById("leixing1").innerHTML="请选择公司类型！";
					return false;
				}
				if(document.getElementById("leixing").value!=""){
					document.getElementById("leixing1").innerHTML="";
				}
				if(document.getElementById("beijing").value==""){
					document.getElementById("beijing1").innerHTML="公司背景不能为空！";
					return false;
				}
				if(document.getElementById("beijing").value!=""){
					document.getElementById("beijing1").innerHTML="";
				}
				if(document.getElementById("zhuangkuang").value==""){
					document.getElementById("zhuangkuang1").innerHTML="发展状况不能为空！";
					return false;
				}
				if(document.getElementById("zhuangkuang").value!=""){
					document.getElementById("zhuangkuang1").innerHTML="";
				}
				if(document.getElementById("yuanyin").value==""){
					document.getElementById("yuanyin1").innerHTML="挖掘原因不能为空！";
					return false;
				}
				if(document.getElementById("yuanyin").value!=""){
					document.getElementById("yuanyin1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加潜在客户信息页</span>
  <form action="qianzai!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>产品信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">潜在客户编号:</td>
					    <td width="35%">
					    <input id="qianid" name='qianzai.qianid' type="text"  style="width:154px" onblur="invoke();"/>
				        <span id="mm" class="STYLE4"></span>
				        <span id="qianid1" class="STYLE4"></span>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">公司名称:</td>
					    <td width="35%"><textarea name="qianzai.qianname" cols="45" rows="1" id="qianname"></textarea>
					    <span id="qianname1" class="STYLE4"></span>
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">公司性质:</td>
					    <td width="35%"><select name="qianzai.xingzhi" id="xingzhi">
                          <option value="" selected="selected">请选择</option>
                          <option value="国有企业">国有企业</option>
                          <option value="外资企业">外资企业</option>
                          <option value="合资企业">合资企业</option>
                          <option value="私人企业">私人企业</option>
						  <option value="集体企业">集体企业</option>
                          <option value="其他">其他</option>
                        </select>
                        <span id="xingzhi1" class="STYLE4"></span>
                        </td>
				         <td nowrap align="right" width="18%" class="STYLE4">记录时间:</td>
					     <td width="35%"><input name='qianzai.jilutime' id="jilutime" type="text" onClick="WdatePicker()" style="width:154px"  />
					     <span id="jilutime1" class="STYLE4"></span>
					     </td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">所在城市:</td>
							<td width="35%">
								<input name='qianzai.chengshi' id="chengshi" type="text" class="text" style="width:154px" />
								<span id="chengshi1" class="STYLE4"></span>
								</td>
							<td nowrap align="right" width="18%" class="STYLE4">公司类型:</td>
							<td width="35%"><select name="qianzai.leixing" id="leixing">
                              <option value="" selected="selected">请选择</option>
									<option value="医院">医院</option>
									<option value="药店">药店</option>
									<option value="超市">超市</option>
									<option value="经销商">经销商</option>
									<option value="其他">其他</option>
									
                            </select>
                            <span id="leixing1" class="STYLE4"></span>
                            </td>
						</tr>
						<tr>
						  <td height="111" align="right" nowrap class="STYLE4">公司背景:</td>
						  <td><textarea name="qianzai.beijing" cols="45" rows="6" id="beijing"></textarea>
						  <span id="beijing1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">发展状况:</td>
						  <td><textarea name="qianzai.zhuangkuang" cols="45" rows="6" id="zhuangkuang"></textarea>
						  <span id="zhuangkuang1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>	
							<td width="15%" height="72" align="right" class="STYLE4">挖掘原因:</td>
							<td colspan="3"><textarea name="qianzai.yuanyin" cols="60" rows="7" id="yuanyin"></textarea>
							<span id="yuanyin1" class="STYLE4"></span>
							</td>
						</tr>
					  </table>			          
				</fieldset>			
			</TD>
		</TR>		
		<TR>
		  <TD colspan="2" align="center" height="50px">
			<input type="submit" value="确定" />　
			<input type="reset"  value="重设">
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
</TD>
		</TR>		
  </table>
</form>
</body>
</html>
