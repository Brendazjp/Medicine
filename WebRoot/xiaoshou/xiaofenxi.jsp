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
<script type="text/javascript">
function on_submit(){
				if(document.getElementById("zhuangtai").value==""){
				    alert("请选择订单状态！");
					return false;
				}
				if(document.getElementById("leibie").value==""){
				    alert("请选择分析类别！");
					return false;
				}
				if(document.getElementById("year").value==""){
				    alert("请选择年！");
					return false;
				}
			}
</script>
</head>
<body>
<span class="STYLE4">当前页为：销售分析</span>
  <form action="xiaofen!fenxi.action" method="post" onsubmit="return on_submit();">
<span class="STYLE4">订单状态:</span><select id="zhuangtai" name="zhuangtai" style="width:100px">
			                            <option value="" selected="selected">请选择</option>
			                            <option value="发货">发货</option>
			                            <option value="退货">退货</option>
			                            <option value="退单">退单</option>
			                          </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="STYLE4">分析类别:</span><select id="leibie" name="leibie" style="width:100px">
                                        <option value="" selected="selected">请选择</option>
			                            <option value="0">产品类别</option>
			                            <option value="1">地区</option>
			                          </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="STYLE4">年:</span><select id="year" name="year" style="width:100px">
			                            <option value="" selected="selected">请选择</option>
			                            <option value="2007">2007</option>
			                            <option value="2008">2008</option>
			                            <option value="2009">2009</option>
			                          </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="STYLE4">月:</span><select id="month" name="month" style="width:100px">
			                            <option value="" selected="selected">请选择</option>
			                            <option value="01">01</option>
			                            <option value="02">02</option>
			                            <option value="03">03</option>
			                            <option value="04">04</option>
			                            <option value="05">05</option>
			                            <option value="06">06</option>
			                            <option value="07">07</option>
			                            <option value="08">08</option>
			                            <option value="09">09</option>
			                            <option value="10">10</option>
			                            <option value="11">11</option>
			                            <option value="12">12</option>
			                          </select>          
			<input type="submit" value="确定"/>　
</form>
</body>
</html>
