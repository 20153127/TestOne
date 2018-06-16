<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业需求</title>
<!-- css  js文件链接 -->
<!-- 上传信息 -->
<!-- css  js文件链接 -->
</head>
<style type="text/css">
.table {
	
}

.table tr {
	
}

.table tr td {
	text-align: left;
	height: 30px;
}

.table tr td input {
	height: 20px;
}
</style>
<body bgcolor="#DDF2FC">
	<div>
		<h1 align="center"></h1>
	</div>
	<div class="table" align="center">
		<form action="" id="myform" method="post">
			<table width="800" height="497.6" border="1">
				<tr>
					<td width="141"><div align="center">技术需求名称</div></td>
					<td colspan="3"><input id="jsxqmc" name="name" type="text"
						value="${b.name }" style="width: 98%" height="98%"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>详细内容</td>
					<td height="100" colspan="3"><textarea name="info"
							style="height: 149px; width: 662px" readonly="readonly">${b.info }</textarea></td>
				</tr>
				<tr>
					<td width="141"><div align="center">研究类型</div></td>
					<td colspan="3"><input id="jsxqmc" name="type" type="text"
						value="${b.type }" style="width: 98%" height="98%"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td width="141"><div align="center">技术需求合作模式</div></td>
					<td colspan="3"><input id="jsxqmc" name="model" type="text"
						value="${b.model }" style="width: 98%" height="98%"
						readonly="readonly" /></td>
				</tr>

				<tr>
					<td height="38"><div align="center">计划总投资</div></td>
					<td width="516"><input id="lxr" name="money" type="text"
						value="${b.money }" style="width: 98%;"
						readonly="readonly" /></td>
					<td width="125"><div align="center">万元</div></td>
				</tr>
				<tr>
					<td>审核意见</td>
					<td height="100" colspan="3"><textarea name="suggest"
							style="height: 149px; width: 662px"></textarea></td>
				</tr>
				<tr></tr>
				<tr>
					<td colspan="4">
						<div align="center">
							<input type="submit" value="通过"
								style="background: #0078cb; width: 200px; height: 35px; color: white"
								onclick="myform.action='${pageContext.request.contextPath }/need?method=shenhe&id=${b.id}&status=1'" />
							<!-- <button onclick="sb('1')"
								style="background: #0078cb; width: 200px; height: 35px; color: white">通过</button>
							&nbsp;&nbsp;
								<button onclick="sb('-1')" value="退回"
									style="background: #0078cb; width: 200px; height: 35px; color: white">退回</button> -->

							<input type="submit" value="退回"
								style="background: #0078cb; width: 200px; height: 35px; color: white"
								onclick="myform.action='${pageContext.request.contextPath }/need?method=shenhe&id=${b.id}&status=-1'" />
						</div>
					</td>
				</tr>
			</table>
			<br> <br> <br> <br>
		</form>
		<!-- <script type="text/javascript">
			function sb(obj){
				var str ="${pageContext.request.contextPath }/demand?method=audit&id=${b.id}&status=1";
				location.href=str;
			}
		</script>  -->
	</div>
	<br>
	<br>
</body>
</html>