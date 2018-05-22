<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
   function update()
   {
   if(confirm("你真的想修改该记录么？"))
    {
    return true;
    }
    return false;
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
		<span class="STYLE4">当前页为：用户修改信息页</span>
		<form action="user!update.action" method="post">
			<table width="99%" border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD width="100%">
						<fieldset style="height: 100%;">
							<!--边框-->
							<legend>
								输入用户修改信息区
							</legend>
							<center>
								<input type="hidden" name="user.id" value="${user.id }">
								<table>
									<tr>
										<td class="STYLE4" align="right"> 
											用户编号:
										</td>
										<td class="STYLE4" align="left">
											<label>${user.userid}</label>
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											登录名:
										</td>
										
										<td class="STYLE4" align="left">
											<label>${user.username}</label>
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											密码:
										</td>
										<td class="STYLE4">
											<input type="text" name="user.password"
												value="${user.password}">
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											姓名:
										</td>
										<td>
											<input type="text" name="user.name" value="${user.name}">
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											性别:
										</td>
										<td class="STYLE4">
											<c:if test="${user.sex eq '男'}">
												<input type="radio" name="user.sex" value="男" checked="true">
							男

							<input type="radio" name="user.sex" value="女">
							女
							</c:if>
											<c:if test="${user.sex eq '女'}">
												<input type="radio" name="user.sex" value="男">
							男

							<input type="radio" name="user.sex" value="女" checked="true">
							女
							</c:if>
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											职务:
										</td>
										<td>
											<select name="user.zhiwu">
												<option value="${user.zhiwu}" selected="selected">
													${user.zhiwu}
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
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											联系方式:
										</td>
										<td>
											<input type="text" name="user.lianxi" value="${user.lianxi}">
										<td>
									</tr>
									<tr>
										<td class="STYLE4" align="right">
											角色:
										</td>
										<td class="STYLE4">
											<select name="user.quanxian">
												<option value="${user.quanxian }" selected="selected">
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
									</tr>
								</table>
							</center>
							<br />
						</fieldset>
					</TD>
				</TR>
				<TR>
					<TD colspan="2" align="center" height="50px">
						<input type="submit" value="修改" onclick="update();">
						<input type="button" value="返回" onclick="window.history.go(-1);" />
				</TR>
			</table>
		</form>

	</body>
</html>