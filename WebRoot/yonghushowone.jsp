<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
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
	</head>
	<body>
		<span class="STYLE4">当前页为：用户详细信息页</span>
		<table width="99%" border="0" cellpadding="0" cellspacing="0">
			<TR>
				<TD width="100%">
					<fieldset style="height: 100%;">
						<!--边框-->
						<legend>
							用户详细信息区
						</legend>
						<center>
							<table border="3">
								<tr>
									<td class="STYLE4">
										用户编号:
									</td>
									<td class="STYLE4">
										<label>
											${user.userid}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										登录名:
									</td>
									<td class="STYLE4">
										<label>
											${user.username}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										密码:
									</td>
									<td class="STYLE4">
										<label>
											${user.password}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										姓名:
									</td>
									<td class="STYLE4">
										<label>
											${user.name}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										性别:
									</td>
									<td class="STYLE4">
										<label>
											${user.sex}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										职务:
									</td>
									<td class="STYLE4">
										<label>
											${user.zhiwu}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										联系方式:
									</td>
									<td class="STYLE4">
										<label>
											${user.lianxi}
										</label>
									<td>
								</tr>
								<tr>
									<td class="STYLE4">
										角色:
									</td>
									<td>
										<label class="STYLE4">
										<c:if test="${user.quanxian eq 0}">
											经理
										</c:if>	
										<c:if test="${user.quanxian eq 1}">
											产品管理
										</c:if>	
										<c:if test="${user.quanxian eq 2}">
											仓库管理
										</c:if>	
										<c:if test="${user.quanxian eq 3}">
											营销管理
										</c:if>	
										<c:if test="${user.quanxian eq 4}">
											销售管理
										</c:if>	
										<c:if test="${user.quanxian eq 5}">
											客服管理
										</c:if>	
										<c:if test="${user.quanxian eq 6}">
											系统管理
										</c:if>	
										</label>
									<td>
							</table>
						</center>
						<br />
					</fieldset>
				</TD>
			</TR>
			<TR>
				<TD colspan="2" align="center" height="50px">
					<input type="button" value="返回" onclick="window.history.go(-1);" />
			</TR>
		</table>
	</body>
</html>