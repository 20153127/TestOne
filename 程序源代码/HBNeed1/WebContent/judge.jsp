<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!-- 技术需求 -->
<!-- 本页面用来处理未审核的信息和退回的信息，包括查看信息，分类别查询未审核和退回的信息，修改信息状态（通过或者退回） -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业需求信息审核</title>
<<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>	
<script src="${pageContext.request.contextPath}/js/bootstrap-3.3.5-dist/bootstrap.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/bootstrap-3.3.5-dist/css/bootstrap.css" />
<script type="text/javascript">
function show(){
	//alert(document.getElementById("div").style.display)
	for(id=1;id<6;id++){
		if(document.getElementById(id).style.display=="none"){
			document.getElementById(id).style.display="";
			document.getElementById("i").value=id;
			break;
		}
	}
}
function notshow(){
	for(id=5;id>0;id--){
		if(document.getElementById(id).style.display==""){
			document.getElementById(id).style.display="none";
			document.getElementById("i").value=id-1;
			break;
		}
	}
}
</script>
 <style>
    .icoFontlist:hover  
    {  
        width: 100px; 
        border: 0px solid #ddd;  
        overflow: hidden;  
        text-align: left;  
        text-overflow: ellipsis;  
        white-space: nowrap;  
        cursor:pointer;   
    }  
    .icoFontlist{  
        width: 100px;   
        border: 0px solid #ddd;  
        color:#5f5f5f;  
        overflow: hidden;  
        text-align: left;  
        text-overflow: ellipsis;  
        white-space: nowrap;  
    }  
</style>
</head>
<body>
	<div align="center" style="background: #C0E4FA; position: relative;">
		河北重大需求查询情况</div>
		
		<form action="${pageContext.request.contextPath }/XuqiuServlet?method=select&username=${userBean.name }&juese=${userBean.juesebean.name }" method="post">
		<div class='col-sm-1' ></div>
			<div class='col-sm-1' >查询条件：</div>
			
			<div id="1">
			<div class='col-sm-2' >
				<select name='tiaojian1' class='form-control'>
				<c:if test="${userBean.juesebean.name =='shenhe'}"><option value="username">用户</option></c:if>
					<option value="represent">法人代表</option>
					<option value="lianxiren">联系人</option>
					<option value="xqname">需求名称</option>
					<option value="theme">主题</option>
					<option value="key">关键字</option>
				</select>
			</div>
			
			<div class='col-sm-1' >
				<select name='JM1' class='form-control'>
					<option value="=">是</option>
					<option value="like">包含</option>
					<option value="!=">不是</option>
					<option value="not like">不含</option>
				</select>
			</div>
			<div class='col-sm-2' >
				<input type="text" name="select1">
			</div>
			</div>
			<div class='col-sm-2' >
			<button style="width:70px ;height:30px;display:" onclick="show();" type="button" >添加</button>
			<button style="width:70px ;height:30px;display:" onclick="notshow();" type="button" >删除</button>
			</div>
		</div>
		
		<div class='form-group' id="2" style="display: none"> 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >
				<select name='QH2' class='form-control'>
					<option value="and">且</option>
					<option value="or">或</option>
				</select>
			</div>
			<div class='col-sm-2' >
				<select name='tiaojian2' class='form-control'>
				<c:if test="${userBean.juesebean.name =='shenhe'}"><option value="username">用户</option></c:if>
					<option value="represent">法人代表</option>
					<option value="lianxiren">联系人</option>
					<option value="xqname">需求名称</option>
					<option value="theme">主题</option>
					<option value="key">关键字</option>
				</select>
			</div>
			
			<div class='col-sm-1' >
				<select name='JM2' class='form-control'>
					<option value="=">是</option>
					<option value="like">包含</option>
					<option value="!=">不是</option>
					<option value="not like">不含</option>
				</select>
			</div>
			
			<div class='col-sm-2' >
				<input type="text" name="select2">
			</div>
		</div>
		
		<div class='form-group' id="3" style="display: none"> 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >
				<select name='QH3' class='form-control'>
					<option value="and">且</option>
					<option value="or">或</option>
				</select>
			</div>
			<div class='col-sm-2' >
				<select name='tiaojian3' class='form-control'>
				<c:if test="${userBean.juesebean.name =='shenhe'}"><option value="username">用户</option></c:if>
					<option value="represent">法人代表</option>
					<option value="lianxiren">联系人</option>
					<option value="xqname">需求名称</option>
					<option value="theme">主题</option>
					<option value="key">关键字</option>
				</select>
			</div>
			
			<div class='col-sm-1' >
				<select name='JM3' class='form-control'>
					<option value="=">是</option>
					<option value="like">包含</option>
					<option value="!=">不是</option>
					<option value="not like">不含</option>
				</select>
			</div>
			
			<div class='col-sm-2' >
				<input type="text" name="select3">
			</div>
		</div>
		
		<div class='form-group' id="4" style="display: none"> 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >
				<select name='QH4' class='form-control'>
					<option value="and">且</option>
					<option value="or">或</option>
				</select>
			</div>
			<div class='col-sm-2' >
				<select name='tiaojian4' class='form-control'>
				<c:if test="${userBean.juesebean.name =='shenhe'}"><option value="username">用户</option></c:if>
					<option value="represent">法人代表</option>
					<option value="lianxiren">联系人</option>
					<option value="xqname">需求名称</option>
					<option value="theme">主题</option>
					<option value="key">关键字</option>
				</select>
			</div>
			
			<div class='col-sm-1' >
				<select name='JM4' class='form-control'>
					<option value="=">是</option>
					<option value="like">包含</option>
					<option value="!=">不是</option>
					<option value="not like">不含</option>
				</select>
			</div>
			
			<div class='col-sm-2' >
				<input type="text" name="select4">
			</div>
		</div>
		
		<div class='form-group' id="5" style="display: none"> 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >
				<select name='QH5' class='form-control'>
					<option value="and">且</option>
					<option value="or">或</option>
				</select>
			</div>
			<div class='col-sm-2' >
				<select name='tiaojian5' class='form-control'>
				<c:if test="${userBean.juesebean.name =='shenhe'}"><option value="username">用户</option></c:if>
					<option value="represent">法人代表</option>
					<option value="lianxiren">联系人</option>
					<option value="xqname">需求名称</option>
					<option value="theme">主题</option>
					<option value="key">关键字</option>
				</select>
			</div>
			
			<div class='col-sm-1' >
				<select name='JM5' class='form-control'>
					<option value="=">是</option>
					<option value="like">包含</option>
					<option value="!=">不是</option>
					<option value="not like">不含</option>
				</select>
			</div>
			
			<div class='col-sm-2' >
				<input type="text" name="select5">
			</div>
		</div>
		
		<div class='form-group'> 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >填报时间：</div>
			
			<div class='col-sm-2' >
			<input type="text" name="time1" id="time1" value="选择时间" onClick="return Calendar('time1');" />
			</div><div class='col-sm-1' >到</div>
			<div class='col-sm-2' >
			<input type="text" name="time2" id="time2" value="选择时间" onClick="return Calendar('time2');" />
			</div>
		</div>
		
		
		<div class='form-group'>
		<br>
		<div class='col-sm-5' ></div> 
		<button style="width:100px ;height:30px;" type="submit" class='btn btn-primary btn-block'>查询</button>
		</div>
	</div>
</form>	
	

	<table id="datatable" width="100%" border="0" cellpadding="0"
		cellspacing="1" bgcolor="#a8c7ce">
		<tr>
			<td bgcolor="d3eaef" width="5%" height="20"><div align="center">序号</div></td>
			<td bgcolor="d3eaef" width="20%" height="20"><div align="center">技术需求名称</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">填报时间</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">审核状态</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">审核操作</div></td>
			<td bgcolor="d3eaef" width="10%" height="20"><div align="center">审核操作</div></td>
		</tr>
		<c:forEach items="${c }" var="item" varStatus="vs">

			<tr>
				<td width='5%' height='20'><div align='center'>${item.id}</div></td>
				<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid4&id=${item.id}">${item.name}</a>
					</div></td>
				<td width='7%' height='20'><div align='center'>${item.createdate}</div></td>
				<c:if test="${item.status==0 }">
					<td width='10%' height='20'><div align='center'>未审核</div></td>
				</c:if>
				<c:if test="${item.status==1 }">
					<td width='10%' height='20'><div align='center'>通过</div></td>
				</c:if>
				<c:if test="${item.status==-1 }">
					<td width='10%' height='20'><div align='center'>未通过</div></td>
				</c:if>
				
				<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid3&id=${item.id}&status=1">通过</a>
					</div></td>
					<td width='20%' height='20'><div align='center'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid3&id=${item.id}&status=2">不通过</a>
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