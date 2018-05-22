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
<script language="javascript" src="js/WdatePicker.js"></script>
<script type='text/javascript' src='dwr/interface/test8.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript">
		 function invoke(){ 
            var jingid= document.getElementById("jingid");
                 test8.find(jingid.value,
                    function(data){
                    var mm = document.getElementById("mm");
                    mm.innerHTML=data;
                    }
                 );     
     }
     function on_submit(){
				if(document.getElementById("jingid").value==""){
					document.getElementById("jingid1").innerHTML="竞争公司编号不能为空！";
					return false;
				}
				if(document.getElementById("jingid").value!=""){
					document.getElementById("jingid1").innerHTML="";
				}
				if(document.getElementById("jingname").value==""){
					document.getElementById("jingname1").innerHTML="竞争公司名称不能为空！";
					return false;
				}
				if(document.getElementById("jingname").value!=""){
					document.getElementById("jingname1").innerHTML="";
				}
				if(document.getElementById("leixing").value==""){
					document.getElementById("leixing1").innerHTML="请选择竞争公司类型！";
					return false;
				}
				if(document.getElementById("leixing").value!=""){
					document.getElementById("leixing1").innerHTML="";
				}
				if(document.getElementById("jilutime").value==""){
					document.getElementById("jilutime1").innerHTML="记录时间不能为空！";
					return false;
				}
				if(document.getElementById("jilutime").value!=""){
					document.getElementById("jilutime1").innerHTML="";
				}
				if(document.getElementById("jingzhengli").value==""){
					document.getElementById("jingzhengli1").innerHTML="竞争力不能为空！";
					return false;
				}
				if(document.getElementById("jingzhengli").value!=""){
					document.getElementById("jingzhengli1").innerHTML="";
				}
				if(document.getElementById("dizhi").value==""){
					document.getElementById("dizhi1").innerHTML="竞争公司地址不能为空！";
					return false;
				}
				if(document.getElementById("dizhi").value!=""){
					document.getElementById("dizhi1").innerHTML="";
				}
				if(document.getElementById("chanpin").value==""){
					document.getElementById("chanpin1").innerHTML="主销产品不能为空！";
					return false;
				}
				if(document.getElementById("chanpin").value!=""){
					document.getElementById("chanpin1").innerHTML="";
				}
				if(document.getElementById("quyu").value==""){
					document.getElementById("quyu1").innerHTML="主销区域不能为空！";
					return false;
				}
				if(document.getElementById("quyu").value!=""){
					document.getElementById("quyu1").innerHTML="";
				}
				alert('增加成功！');
				return true;
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：添加竞争公司信息页</span>
  <form action="jingzheng!save.action" method="post" onsubmit="return on_submit();">
<table width="99%" border="0" cellpadding="0" cellspacing="0">    
		   <TR>
			<TD width="100%" height="300">
				<fieldset style="height:100%;"><!--边框-->
				<legend>竞争公司信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%" class="STYLE4">竞争公司编号:</td>
					    <td width="35%">
					    <input id="jingid" name='jingzheng.jingid' type="text" class="text"style="width:154px" onblur="invoke();"/>
				        <span id="mm" class="STYLE4"></span>
				        <span id="jingid1" class="STYLE4"></span>
				        </td>
				        	
					    <td nowrap align="right" width="18%" class="STYLE4">竞争公司名称:</td>
					    <td width="35%"><input name='jingzheng.jingname' id="jingname" type="text" class="text" style="width:154px"  />
				        <span id="jingname1" class="STYLE4"></span>
				        </td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%" class="STYLE4">竞争公司类型:</td>
					    <td width="35%"><select name="jingzheng.leixing" id="leixing">
                          <option value="" selected="selected">请选择</option>
                          <option value="合资企业">合资企业</option>
                          <option value="私人企业">私人企业</option>
                          <option value="外资企业">外资企业</option>
                          <option value="国有企业">国有企业</option>
                          <option value="集体企业">集体企业</option>
                          <option value="其他">其他</option>
                          </select>
                          <span id="leixing1" class="STYLE4"></span>
                          </td>
					    <td nowrap align="right" width="18%" class="STYLE4">记录时间:</td>
					     <td width="35%" class="STYLE4"><input name='jingzheng.jilutime' id="jilutime" type="text" onClick="WdatePicker()" style="width:154px" />
					     <span id="jilutime1" class="STYLE4"></span>
					     </td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%" class="STYLE4">竞争力:</td>
						  <td width="35%">						    <p class="STYLE4">
                          <textarea name='jingzheng.jingzhengli' cols="45" rows="1" id="jingzhengli"></textarea>  
					          <span class="STYLE4">(如：品牌力，研发力，制造力，营销力，产品力...)</span><br />		
					          <span id="jingzhengli1" class="STYLE4"></span>
					           </td>
							<td nowrap align="right" width="18%" class="STYLE4">竞争公司地址:</td>
							<td width="35%"><textarea name="jingzheng.dizhi" cols="45" rows="2" id="dizhi"></textarea>
							<span id="dizhi1" class="STYLE4"></span>
							</td>
						</tr>
						<tr>
						  <td height="23" align="right" nowrap class="STYLE4">主销产品:</td>
						  <td><textarea name="jingzheng.chanpin" cols="45" rows="4" id="chanpin"></textarea>
						  <span id="chanpin1" class="STYLE4"></span>
						  </td>
						  <td nowrap="nowrap" align="right" class="STYLE4">主销区域:</td>
						  <td><textarea name="jingzheng.quyu" cols="45" rows="4" id="quyu"></textarea>
						  <span id="quyu1" class="STYLE4"></span>
						  </td>
					    </tr>
						<tr>	
							<td width="15%" height="72" align="right" class="STYLE4">主销策略:</td>
							<td width="35%"><textarea name="jingzheng.celue" cols="45" rows="4" id="textare"></textarea></td>
							<td nowrap="nowrap" align="right" class="STYLE4">发展状况:</td>
							<td><textarea name="jingzheng.zhuangkuang" cols="45" rows="4" id="textare"></textarea></td>
						</tr>
						<tr>
						  <td height="72" align="right" nowrap="nowrap" class="STYLE4">公司背景:</td>
						  <td><textarea name="jingzheng.beijing" cols="45" rows="4" id="textare"></textarea></td>
						  <td  align="right" class="STYLE4">备注:</td>
						  <td ><textarea name="jingzheng.beizhu" cols="45" rows="4" id="textare"></textarea></td>
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
