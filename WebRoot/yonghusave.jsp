<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type='text/javascript' src='dwr/interface/test.js'></script>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/util.js'></script>
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
}
-->
</style>
<script type="text/javascript">
     function invoke(){ 
     var username = document.getElementById("username");
                 test.findByusername(username.value,
                    function(data){
                   var mm = document.getElementById("mm");
                    mm.innerHTML=data;
                    }
                 );     
     }
     function on_submit(){
				if(document.getElementById("userid").value==""){
				    alert("用户编号不能为空");
					return false;
				}
				if(document.getElementById("username").value==""){
				    alert("登录名不能为空");
					return false;
				}
				if(document.getElementById("password").value==""){
				    alert("密码不能为空");
					return false;
				}
				if(document.getElementById("qpassword").value==""){
				    alert("确认密码不能为空");
					return false;
				}
				if(document.getElementById("qpassword").value!=document.getElementById("password").value){
				    alert("密码与确认密码不相同");
					return false;
				}
				if(document.getElementById("name").value==""){
				    alert("姓名不能为空");
					return false;
				}
				
				if(document.getElementById("zhiwu").value==""){
				    alert("请选择职务");
					return false;
				}
				if(document.getElementById("quanxian").value==""){
				    alert("请为用户分配角色");
					return false;
				}
				alert('增加成功！');
				return true;
			}
</script>
	
</head>
	<body>
		<span class="STYLE4">当前页为：添加用户信息页</span>
		<form action="user!save.action" method="post" onsubmit="return on_submit();">
			<table width="99%" border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD width="100%">
						<fieldset style="height: 100%;">
							<!--边框-->
							<legend>
								添加用户信息区
							</legend>
							<center>
								<table>
									<tr>
										<td class="STYLE4" align="right">
											用户编号:
										</td>
										<td>
											<input id="userid" type="text" name="user.userid" >
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											登录名:
										</td>
										<td>
											<input type="text" name="user.username" id="username" onblur="invoke();">
										</td>
										<td>
										<span id="mm" class="STYLE4"></span>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											密码:
										</td>
										<td>
											<input type="password" id="password" name="user.password">
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											确认密码:
										</td>
										<td>
											<input type="password" id="qpassword" name="user.qpassword">
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											姓名:
										</td>
										<td>
											<input type="text" id="name" name="user.name">
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											性别:
										</td>
										<td class="STYLE4">
											<input type="radio" name="user.sex" value="男" checked="checked">
											男
											<input type="radio" name="user.sex" value="女">
											女
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											职务:
										</td>
										<td>
											<select name="user.zhiwu" id="zhiwu">
												<option value="" selected="selected">
													请选择
												</option>
												<option value="科研人员">
													科研人员
												</option>
												<option value="产品管理员">
													产品管理员
												</option>
												<option value="仓库管理员">
													仓库管理员
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
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											联系方式:
										</td>
										<td>
											<input type="text" name="user.lianxi">
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											角色:
										</td>
										<td>
										    <select name="user.quanxian" id="quanxian">
												<option value="" selected="selected">
													请选择
												</option>
												<option value="0">
													经理
												</option>
												<option value="1">
													产品管理
												</option>
												<option value="2">
													仓库管理
												</option>
												<option value="3">
													营销管理
												</option>
												<option value="4">
													销售管理
												</option>
												<option value="5">
													客服管理
												</option>
												<option value="6">
													系统管理
												</option>
											</select>
										</td>
										<td>
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
						<input type="submit" value="确定" >
						<input type="reset" value="重设">
						<input type="button" value="返回" onclick="window.history.go(-1);" />
				</TR>
			</table>
		</form>
	</body>
</html>