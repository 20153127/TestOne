<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
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
		<form action="${pageContext.request.contextPath }/demand?method=add"
			method="post">
		<!--  	<table width="800" height="400" border="1">
				<tr>
					<td width="141"><div align="center">技术需求名称</div></td>
					<td colspan="3">
					
					<input id="jsxqmc" name="name" type="text" value="${b.name }"
						style="width: 98%" height="98%" /></td>
				</tr>
				<tr>
					<td>详细内容</td>
					<td height="100" colspan="3"><textarea name="info" 
							style="height: 230px; width: 642px">${b.info }</textarea></td>
				</tr>
				<tr>
					<td width="141"><div align="center">研究类型</div></td>
					<td colspan="3"><input id="jsxqmc" name="name" type="text" value="${b.type }"
						style="width: 98%" height="98%" /></td>
				</tr>
				<tr>
					<td width="141"><div align="center">技术需求合作模式</div></td>
					<td colspan="3"><input id="jsxqmc" name="name" type="text" value="${b.model }"
						style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td height="38"><div align="center">计划总投资</div></td>
					<td width="516"><input id="lxr" name="allmoney" type="text" value="${b.allmoney }"
						style="width: 98%;" /></td>
					<td width="125"><div align="center">万元</div></td>
				</tr>
			</table>-->
			
			<table width="800" height="497.6" border="1">
				<tr>
					<td width="141"><div align="center">机构名称</div></td>
					<td colspan="3">
					<input id="name" name="name" type="text" value="${b.name }"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">通讯地址</div></td>
					<td colspan="3">
					<input id="txaddress" name="txaddress" type="text" value="${b.txaddress}"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">单位网址</div></td>
					<td>
					<input id="danweiwz" name="danweiwz" type="text" value="${b.danweiwz }"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">电子信箱</div></td>
					<td>
					<input id="email" name="email" type="text"value="${b.email }"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">法人代表</div></td>
					<td>
					<input id="daibiao" name="daibiao" type="text" value="${b.daibiao }"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">邮政编码</div></td>
					<td>
					<input id="bianma" name="bianma" type="text" value="${b.bianma }"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td rowspan="2"><font style="color: red">*</font>联系人</td>
					<td rowspan="2"><input type="text" name="lianxi" value="${b.lianxi }"
						style="border: 1px solid #378888;" ></td>
						
					<td ><font style="color: red">*</font>电话</td>
					<td >
					1.固定<input type="text" name="dianhua"	value="${b.dianhua }" style="border: 1px solid #378888; width: 120px"> 
					
					
					2.手机<input type="text" id="phone"	value="${b.phone }"	name="phone" style="border: 1px solid #378888; width: 120px"
					>
					</td>
				</tr>

				<tr>

					<td >传真</td>
					<td><input type="text" name="chuanzhen" value="${b.chuanzhen }"
						style="border: 1px solid #378888" ></td>
				</tr>

				
				
				<tr>
					<td width="141"><div align="center"> 属性机构</div></td>
					<td colspan="3">
					<input id="jigou" name="jigou" value="${b.jigou }"	type="text" value="其他"	 height="98%" />
					</td>
				</tr>
				<tr>
					<td height="100" colspan="4">
					
					<textarea maxlength="200" name="info"	style="height: 150px; width: 789px">${b.info }</textarea></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">技术需求名称</div></td>
					<td colspan="3">
					<input id="needname" name="needname" type="text"	value="${b.needname }"	style="width: 98%" height="98%" /></td>
				</tr>
				
					<tr>
					<td height="100" colspan="4">
					
					<textarea maxlength="500" name="info1"	style="height: 295px; width: 789px">${b.info1 }</textarea></td>
				</tr>
				
				<tr>
					<td height="60"><div align="center">研究类型</div></td>
					<td colspan="3">
						<input id="type" name="type" type="text"	value="${b.type }"	style="width: 98%" height="98%" />
					</td>
				</tr>
				<tr id="ly">
						<td width="141"><div align="center"> 需求技术所属领域</div></td>
					<td colspan="3">
					<input id="lingyu" name="lingyu" type="text" value="${b.lingyu }" 	 height="98%" />
					
					</td>
					<br/>
							
					</tr>
				<tr id="hangye">
						<td width="141"><div align="center"> 行业</div></td>
					<td colspan="3">
					<input id="daye" name="daye" type="text" value="${b.daye }"   height="98%" />
						<input id="xiaoye" name="xiaoye" type="text" value="${b.xiaoye }" 	 height="98%" />
					
					</td>
					<br/>
							
					</tr>
			<tr>
		
				
			</tr>
				
				
					<tr id="qit" >
					<td width="141"><div align="center">其他技术</div></td>
					<td colspan="3">
					<input id="qtjishu" name="qtjishu" type="text" value="${b.qtjishu }"  style="width: 98%" height="98%" /></td>
				</tr>
				
				
				
				<tr>
					<td height="70"><div align="center">技术需求合作模式</div></td>
					<td colspan="3">
						<div id="jsssly" class="jsssly"></div>
			
						 <input	type="text" name="model" value="${b.model }"  />
					</td>
				</tr>
					
				<tr>
					<td width="141"><div align="center">计划总投资</div></td>
					<td>
					<input id="allmoney" name="allmoney" type="text" value="${b.allmoney }" 	style="width: 98%" height="98%" /> 万元</td>
					<td width="141"><div align="center">企业自筹</div></td>
					<td>
					<input id="qiyem" name="qiyem" type="text" value="${b.qiyem }" 	style="width: 98%" height="98%" /> 万元</td>
				</tr>
					
				<tr>
					<td width="141"><div align="center">银行贷款</div></td>
					<td>
					<input id="daikuan" name="daikuan" type="text" value="${b.daikuan }" 	style="width: 98%" height="98%" /> 万元</td>
					<td width="141"><div align="center">其它融资</div></td>
					<td>
					<input id="qitam" name="qitam"	value="${b.qitam }"  type="text"	style="width: 98%" height="98%" /> 万元</td>
				</tr>
				
			</table>
			<br> <br> <br> <br>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
</body>
</html>