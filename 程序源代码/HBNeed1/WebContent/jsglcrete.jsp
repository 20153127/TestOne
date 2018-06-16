<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 技术需求 -->
<!-- 本页面用来处理未审核的信息和退回的信息，包括查看信息，分类别查询未审核和退回的信息，修改信息状态（通过或者退回） -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业需求信息审核</title>
</head>
<body>
	
	<div align="center" style="background: #C0E4FA; position: relative;">
		河北重大需求查询情况</div>
<form action="${pageContext.request.contextPath }/userservlet?method=changejs" method="post"	>
	<input type="hidden" name="username" value="${c.username }">
	<table id="datatable" width="100%" border="0" cellpadding="0"
		cellspacing="1" bgcolor="#a8c7ce">
		<tr>
			<td bgcolor="d3eaef" width="5%" height="20"><div align="center">用户名</div></td>
				<td bgcolor="d3eaef" width="5%" height="20"><div align="center">姓名</div></td>
			<td bgcolor="d3eaef" width="20%" height="20"><div align="center">角色</div></td>
			<td bgcolor="d3eaef" width="20%" height="20"><div align="center">角色修改</div></td>
			<td bgcolor="d3eaef" width="20%" height="20"><div align="center">确定修改</div></td>
		</tr>
			<tr>
				<td width='5%' height='20' ><div align='center'>${c.username}</div></td>
				<td width='20%' height='20'><div lign='center'>
						${c.name}
					</div></td>
				<c:if test="${c.juese=='填报员' }">
					<td width='10%' height='20'><div align='center'>填报员</div></td>
				</c:if>
				<c:if test="${c.juese=='审核员' }">
					<td width='10%' height='20'><div align='center'>审核员</div></td>
				</c:if>
				<c:if test="${c.juese=='管理 员'}">
					<td width='10%' height='20'><div align='center'>管理员</div></td>
				</c:if>
				<td width='20%' height='20'><div align='center'>
						<select name="juese">
					<option value="填报员">填报员</option>
					<option value="审核员">审核员</option>							
					</select>		
					</div></td>
				<td width='20%' height='20'><div align='center'>
					<div align="center">
				<input id="upload" type="submit" value="确定修改"	style="hight: 80px; width: 100px">
			</div>
					</div></td>
			</tr>
	</table>
	
	</form>
			<br>
		<br>
		<h1 align="center">${msg }</h1>
		<br>
		<br>
	<script>
		function showtable() {
			var color1 = "rgb(255,255,255)";
			var color2 = "rgb(247,247,247)";
			var bgColor = "rgb(213,244,254)";
			var trs = document.getElementById("datatable")
					.getElementsByTagName("tr");
			for (var i = 0; i < trs.length; i++) {
				if (i % 2 == 0) {
					trs[i].style.backgroundColor = color1;
					trs[i].onmouseover = function() {
						this.style.backgroundColor = bgColor;
					};
					trs[i].onmouseout = function() {
						this.style.backgroundColor = color1;
					};
				} else {
					trs[i].style.backgroundColor = color2;
					trs[i].onmouseover = function() {
						this.style.backgroundColor = bgColor;
					};
					trs[i].onmouseout = function() {
						this.style.backgroundColor = color2;
					};
				}
			}
		}
		showtable();
	</script>
</body>
</html>