<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看需求</title>
<<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>	
<script src="${pageContext.request.contextPath}/js/bootstrap-3.3.5-dist/bootstrap.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/bootstrap-3.3.5-dist/css/bootstrap.css" />
</head>
</head>
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
<script type="text/javascript">
function show(){
	//alert(document.getElementById("div").style.display)
	for(id=1;id<4;id++){
		if(document.getElementById(id).style.display=="none"){
			document.getElementById(id).style.display="";
			document.getElementById("i").value=id;
			break;
		}
	}
}
function notshow(){
	for(id=3;id>0;id--){
		if(document.getElementById(id).style.display==""){
			document.getElementById(id).style.display="none";
			document.getElementById("i").value=id-1;
			break;
		}
	}
}
</script>
<body>
<form action="${pageContext.request.contextPath }/needservlet?method=select&username=${userb.name }" method="post">
	<input type="hidden" name="i" id="i" value=1>
	<div class="container-fluid"> 
	
		<div class='form-group' > 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >查询条件：</div>
			
			<div id="1">
			<div class='col-sm-2' >
				<select name='tiaojian1' class='form-control'>
					<option value="lianxi">联系人</option>
					<option value="name">需求名称</option>
					<option value="keys">关键字</option>
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
				<select name='qh2' class='form-control'>
					<option value="and">且</option>
					<option value="or">或</option>
				</select>
			</div>
			
			<div class='col-sm-2' >
				<select name='tiaojian2' class='form-control'>
					<option value="lianxi">联系人</option>
					<option value="name">需求名称</option>
					<option value="keys">关键字</option>
				</select>
			</div>
			
	<!-- 		<div class='col-sm-1' >
			</div> -->
			<div class='col-sm-2' >
				<input type="text" name="select2">
			</div>
		</div>
		
		<div class='form-group' id="3" style="display: none"> 
		<br>
			<div class='col-sm-1' ></div>
			<div class='col-sm-1' >
				<select name='qh3' class='form-control'>
					<option value="and">且</option>
					<option value="or">或</option>
				</select>
			</div>
			<div class='col-sm-2' >
				<select name='tiaojian3' class='form-control'>

					<option value="lianxi">联系人</option>
					<option value="name">需求名称</option>
					<option value="keys">关键字</option>
				</select>
				
				</div>
			<div class='col-sm-2' >
				<input type="text" name="select3">
			</div>
			</div>
			
			
		<div class='form-group'> 
		<br>
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
		<div class="row-fluid">
			<div class="col-md-1 "></div>
			<div class="col-md-10 ">
				<table class="table table-striped">
					<tr>
						
						<td>需求名称</td>
						<td>联系人</td>
						<td>状态</td>
						<td>时间</td>
						<td >审核操作</td>
						<td >审核操作</td>
					</tr>
					<!-- forEach遍历出xuqiuBeans -->
					<c:forEach items="${c}" var="item" varStatus="status">
						<tr>
							<td><a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid4&id=${item.id}">${item.name }</a></td>
							<td>${item.lianxi }</td>
							<td><c:if test="${item.status==0}">未审核</c:if>
								<c:if test="${item.status==1}">通过</c:if>
								<c:if test="${item.status==2}">未通过</c:if>
							</td>				
							<td>${item.createdate }</td>
							<td width='20%' height='20'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid3&id=${item.id}&status=1">通过</a>
					</td>
					<td width='20%' height='20'>
						<a
							href="${pageContext.request.contextPath }/needservlet?method=getbyid3&id=${item.id}&status=2">不通过</a>
					</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class=" col-md-1"></div>
		</div>
</body>
</html>