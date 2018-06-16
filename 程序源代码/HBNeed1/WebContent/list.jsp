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

	<table id="datatable" width="100%" border="0" cellpadding="0"
		cellspacing="1" bgcolor="#a8c7ce">
		<tr>
			<td bgcolor="d3eaef" width="5%" height="20"><div align="center">序号</div></td>
			<td bgcolor="d3eaef" width="20%" height="20"><div align="center">技术需求名称</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">填报时间</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">审核状态</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">删除操作</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">修改操作</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">新增操作</div></td>
		</tr>
		<c:forEach items="${c }" var="item" varStatus="vs">

			<tr>
				<td width='5%' height='20'><div align='center'>${item.id}</div></td>
				<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid&id=${item.id}">${item.name}</a>
					</div></td>
				<td width='7%' height='20'><div align='center'>${item.createdate}</div></td>
				<c:if test="${item.status==0 }">
					<td width='10%' height='20'><div align='center'>未审核</div></td>
				</c:if>
				<c:if test="${item.status==1 }">
					<td width='10%' height='20'><div align='center'>通过</div></td>
				</c:if>
				<c:if test="${item.status==2 }">
					<td width='10%' height='20'><div align='center'>未通过</div></td>
				</c:if>
				
				<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid1&id=${item.id}">删除</a>
					</div></td>
					<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid2&id=${item.id}">修改</a>
					</div></td>
					<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/need.jsp">新增</a>
					</div></td>
			</tr>
		</c:forEach>
	</table>
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