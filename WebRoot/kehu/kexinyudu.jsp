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
		<script type='text/javascript' src='../dwr/interface/search.js'></script>
		<script type='text/javascript' src='../dwr/engine.js'></script>
		<script type='text/javascript' src='../dwr/util.js'></script>
		<script type="text/javascript">
			function getChildren(){
			var node = document.getElementById("diqu");
				search.getChildren(node.value,function(datas){
					var chengshi=document.getElementById("chengshi");
					dwr.util.removeAllOptions("chengshi");
					dwr.util.addOptions("chengshi",datas);
				});
			}
			 function on_submit(){
				if(document.getElementById("diqu").value==""){
				    alert("请选择所属地区！");
					return false;
				}
			}
		</script>
</head>
<body>
<span class="STYLE4">当前页为：客户信誉度分析</span>
  <form action="kehu!xinyushow.action" method="post" onsubmit="return on_submit();">
<span class="STYLE4">所属地区:</span><select id="diqu" name="kehu.shichang.diqu" style="width:100px" onchange="getChildren();">
			                            <option value="" selected="selected">请选择</option>
			                            <option value="东北地区">东北地区</option>
			                            <option value="华北地区">华北地区</option>
			                            <option value="华东地区">华东地区</option>
			                            <option value="华南地区">华南地区</option>
			                            <option value="西南地区">西南地区</option>
			                            <option value="西北地区">西北地区</option>
			                            <option value="中南地区">中南地区</option>
			                            <option value="其它地区">其它地区</option>
			                          </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="STYLE4">所在城市:</span><select name="kehu.shichang.chengshi" style="width:100px" id="chengshi">
			                            <option value="" selected="selected">请选择</option>
			                          </select>     
			<input type="submit" value="确定"/>　
</form>
</body>
</html>
