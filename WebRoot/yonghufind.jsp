<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
		<span class="STYLE4">当前页为：查询用户信息页</span>
		<form action="user!findstr.action" method="post">
			<table width="99%" border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD width="100%">
						<fieldset style="height: 100%;">
							<!--边框-->
							<legend>
								输入查询用户信息区
							</legend>
							<center>
								<table width="643">
									<tr>
										<td width="70" class="STYLE4" align="right">
											用户编号:
										</td>
										<td width="168">
											<input type="text" name="user.userid">
										<td width="24">
										<td width="85">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
										<td width="56" class="STYLE4" align="right">
											登录名:
										</td>
										<td width="188">
											<input type="text" name="user.username">
										<td width="35">
									</tr>
									<tr>
										<td colspan="5" ></td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											姓名:
										</td>
										<td>
											<input type="text" name="user.name">
										<td>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
										<td class="STYLE4" align="right">
											性别:
										</td>
										<td class="STYLE4" align="left">
										    <input type="radio" style="display:none" name="user.sex" value="" checked="checked">
											<input type="radio" name="user.sex" value="男"
												>
											男
											<input type="radio" name="user.sex" value="女">
											女
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											职务:
										</td>
										<td>
											<select name="user.zhiwu">
												<option value="" selected="selected">
													请选择
												</option>
												<option value="科研人员">
													科研人员
												</option>
												<option value="产品管理员">
													产品管理员
												</option>
												<option value="营销员">
													营销员
												</option>
												<option value="销售员">
													销售员
												</option>
												<option value="客服人员">
													客服人员
												</option>
												<option value="文员">
													文员
												</option>
												<option value="经理">
													经理
												</option>
												<option value="部门经理">
													部门经理
												</option>
												<option value="系统管理员">
													系统管理员
												</option>
												<option value="其他">
													其他
												</option>
											</select>
										<td>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
									</tr>
							  </table>
							</center>
							<br />
						</fieldset>
					</TD>
				</TR>
				<TR>
					<TD colspan="2" align="center" height="50px">
						<input type="submit" value="查询">
						<input type=reset value="重设">
						<input type="button" value="返回" onclick="window.history.go(-1);" />
				</TR>
			</table>
		</form>
	</body>
</html>