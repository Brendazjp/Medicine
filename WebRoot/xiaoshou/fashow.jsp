<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px
}

.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}

.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>
<style>
	a:link{color:#000099}
	a:hover{color:#000099}
	a:visited{ color:#000099;}
</style>
		<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
<script type="text/javascript">
  function del()
  {
    if(confirm("你真的想删除该记录么？"))
    {
    return true;
    }
    return false;
  }
</script>

	</head>

	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="30" background="images/tab_05.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="46%" valign="middle">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="5%">
														<div align="center">
															<img src="images/tb.gif" width="16" height="16" />
														</div>
													</td>
													<td width="95%" class="STYLE1">
														<span class="STYLE3">你当前的位置</span>：[销售信息管理]-[发货管理]
													</td>
												</tr>
											</table>
										</td>
										<td width="54%">
											<table border="0" align="right" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="60">
														<table width="87%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
															</tr>
														</table>
													</td>
													<td width="60">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	
																</td>
															</tr>
														</table>
													</td>
													<td width="60">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	<div align="center">
																		<a href="fahuo!zhuan.action" target="rightFrame">查找</a>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="16">
								<img src="images/tab_07.gif" width="16" height="30" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="8" background="images/tab_12.gif">&nbsp;
								
							</td>
							<td>
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6" onmouseover="changeto()"
									onmouseout="changeback()">
									<tr>
										<td width="11%" height="22" background="images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1">订单编号</span>
											</div>
										</td>
										<td width="22%" height="22" background="images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1">客户公司名称</span>
											</div>
										</td>
										<td width="17%" height="22" background="images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1">产品名称</span>
											</div>
										</td>
										<td width="10%" background="images/bg.gif" bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1">订单日期</span>
											</div>
										</td>
										<td width="10%" height="22" background="images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1">发货日期</span>
											</div>
										</td>
										<td width="15%" height="22" background="images/bg.gif"
											bgcolor="#FFFFFF" class="STYLE1">
											<div align="center">
												基本操作
											</div>
										</td>
									</tr>
									<c:choose>
										<c:when test="${empty pm.datas}">
											<tr>
												<td colspan="6">
													<div align="center">
														<span class="STYLE1"> 没有记录 </span>
													</div>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${pm.datas}" var="u">
												<tr>
													<td height="20" bgcolor="#FFFFFF">
														<div align="center">
															<span class="STYLE1">${u.xiaoid}</span>
														</div>
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<div align="center">
															<span class="STYLE1">${u.kehu.kename}</span>
														</div>
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<div align="center">
															<span class="STYLE1">${u.chanpin.channame}</span>
														</div>
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<div align="center">
															<span class="STYLE1">${u.xiaotime}</span>
														</div>
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<div align="center">
															<span class="STYLE1">${u.fatime}</span>
														</div>
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<div align="center">
															<span class="STYLE1"> 
															    <a href="fahuo!showone.action?xiaoshou.id=${u.id}"
																target="rightFrame">详细</a>&nbsp;&nbsp;
															    <a href="fahuo!showone1.action?xiaoshou.id=${u.id}"
																target="rightFrame">修改</a>&nbsp;&nbsp;
																<a href="fahuo!showoneth.action?xiaoshou.id=${u.id}"
																target="rightFrame">退货</a>
															</span>	
														</div>
													</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</table>
							</td>
							<td width="8" background="images/tab_15.gif">&nbsp;
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="35" background="images/tab_19.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="STYLE4">
											&nbsp;&nbsp;共有${pm.total}条记录
										</td>
										<td class="STYLE4" align="right">
											<pg:pager url="fahuo!show.action" items="${pm.total}"
												export="currentPageNumber=pageNumber" maxPageItems="15"
												maxIndexPages="5">
												<pg:first>
													<a href="${pageUrl}"><img src="images/first.gif" style="border:0px" width="37" height="15" /></a>
												</pg:first>
												<pg:prev>
													<a href="${pageUrl }"><img src="images/back.gif" style="border:0px" width="43" height="15" /></a>
												</pg:prev>
												<pg:pages>
													<c:choose>
														<c:when test="${currentPageNumber eq pageNumber}">
															<font color="red">${pageNumber }</font>
														</c:when>
														<c:otherwise>
															<a href="${pageUrl }">${pageNumber }</a>
														</c:otherwise>
													</c:choose>
												</pg:pages>
												<pg:next>
													<a href="${pageUrl }"><img src="images/next.gif" style="border:0px" width="43" height="15" /></a>
												</pg:next>
												<pg:last>
													<a href="${pageUrl }"><img src="images/last.gif" style="border:0px" width="37" height="15" /></a>
												</pg:last>
											</pg:pager>
										</td>
									</tr>
								</table>
							</td>
							<td width="16">
								<img src="images/tab_20.gif" width="16" height="35" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
