<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
<script type="text/javascript">
   function on_submit(){
				if(document.getElementById("password").value==""){
				    alert("密码不能为空");
					return false;
				}
				if(document.getElementById("newpassword").value==""){
				    alert("新密码不能为空");
					return false;
				}
				if(document.getElementById("pnewpassword").value==""){
				    alert("再输入一次新密码不能为空");
					return false;
				}
				if(document.getElementById("newpassword").value!=document.getElementById("pnewpassword").value){
				    alert("新密码与再输入一次新密码不相同");
					return false;
				}
				}
</script>
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
		<span class="STYLE4">当前页为：用户修改密码页</span>
		<form action="user!updatepass.action" method="post" onsubmit="return on_submit();">
			<table width="99%" border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD width="100%">
						<fieldset style="height: 100%;">
							<!--边框-->
							<legend>
								输入用户修改区
							</legend>
							<center>
								<input type="hidden" name="user.id" value="${user.id }">
							<table>
									<tr>
										<td class="STYLE4" align="right">
											用户编号:
										</td>
										<td>
											<input type="text" name="user.userid" readonly="readonly" value="${user.userid}">
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											登录名:
										</td>
										<td>
										<input type="text" name="user.username" readonly="readonly" value="${user.username }">
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											密码:
										</td>
										<td>
										    <input type="password" name="user.password" id="password">
										
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											新密码:
										</td>
										<td>
											<input type="password" name="newpassword" id="newpassword">
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											再输入一次新密码:
										</td>
										<td>
											<input type="password" name="pnewpassword" id="pnewpassword">
										<td>
									</tr>
								</table>
							</center>
							<br />
						</fieldset>
					</TD>
				</TR>
				<TR>
					<TD colspan="2" align="center" height="50px">
						<input type="submit" value="确定">
						<input type="button" value="返回" onclick="window.history.go(-1);" />
					</TD>
				</TR>
			</table>
		</form>
	</body>
</html>