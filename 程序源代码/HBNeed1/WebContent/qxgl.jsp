<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="styleshenheeet" type="text/css">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>	
<style type="text/css">
		    table {
		    border-collapse:collapse;
		    }
		    table tr td{ border-bottom:1px solid #dedede;}
		    table tr{
		    height:25px;
		    }
        </style>
        <style> 
			.even{background:#D9D9D9;} 
			.odd{background:#FFFFEE;} 
			.selected{background:#FF9900;} 
		</style> 
<script type="text/javascript">

	function getMsg() {
		
		
			$("#xqtianbao").prop("checked", false);//需求填报
			$("#xqgl").prop("checked", false); //需求管理
			$("#shenhe").prop("checked", false); //需求审核
			$("#typefind").prop("checked", false); //分类浏览
			$("#xinxigl").prop("checked", false); //个人信息修改
			$("#mimaxg").prop("checked", false);	//密码修改
			$("#jsqx").prop("checked", false); //jsqx角色权限管理
			$("#zhjs").prop("checked", false); //多条件查询
			$("#tjbb").prop("checked", false); //统计报表
		
		var part = $("#juese").val();
		if(part == "0"){
			return;
		}
		if(part == "填报员")
		{
			if("${p1.xqtianbao}" == "1")
				$("#xqtianbao").prop("checked", true);
			if("${p1.xqgl}" == "1")
				$("#xqgl").prop("checked", true);
			if("${p1.shenhe}" == "1")
				$("#shenhe").prop("checked", true);
			if("${p1.typefind}" == "1")
				$("#typefind").prop("checked", true);
			if("${p1.xinxigl}" == "1")
				$("#xinxigl").prop("checked", true);
			if("${p1.mimaxg}" == "1")
				$("#mimaxg").prop("checked", true);
			if("${p1.jsqx}" == "1")
				$("#jsqx").prop("checked", true);
			if("${p1.zhjs}" == "1")
				$("#zhjs").prop("checked", true);
			if("${p1.tjbb}" == "1")
				$("#tjbb").prop("checked", true);
		}
		if(part == "审核员")
		{
			if("${p2.xqtianbao}" == "1")
				$("#xqtianbao").prop("checked", true);
			if("${p2.xqgl}" == "1")
				$("#xqgl").prop("checked", true);
			if("${p2.shenhe}" == "1")
				$("#shenhe").prop("checked", true);
			if("${p2.typefind}" == "1")
				$("#typefind").prop("checked", true);
			if("${p2.xinxigl}" == "1")
				$("#xinxigl").prop("checked", true);
			if("${p2.mimaxg}" == "1")
				$("#mimaxg").prop("checked", true);
			if("${p2.jsqx}" == "1")
				$("#jsqx").prop("checked", true);
			if("${p2.zhjs}" == "1")
				$("#zhjs").prop("checked", true);
			if("${p2.tjbb}" == "1")
				$("#tjbb").prop("checked", true);
		}
	}
</script>
</head>
<body>

 <div style="text-align:center; align-content: center; background-color: #DCEEFC;"> 
 	<font style="font-weight:bold;font-size:25px;">角色权限管理</font> 
 	<hr style="border:none;border-top:1px solid #838B8B;"/>
 	
 	<form action="${pageContext.request.contextPath }/powerservlet?method=update"
					 method="post" >
<div>
 <strong>请选择角色:</strong>      
					
 <select id="juese" name="juese" onchange="getMsg()">
 	<option value = "0">请选择角色</option>
 	<option value = "填报员">填报员</option>
 	<option value ="审核员">审核员</option>

 </select>
 <input type="submit" class="btnMy" value="保存" id="msg">
 
 </div>
 
 <div style="margin-top:20px;">
<div style="text-align:center;">
		
			<table width="100%">
                <tr style="font-weight:bold;background-color:#2993FC;">
                    <td width="20%" align="center">权限名称</td>
                    <td width="" align="center">权限说明</td>
                    <td width="10%" align="center">是否赋予</td>
                </tr>
                <tr>
                    <td> 需求征集</td>
                    <td>可以填报需求</td>
                    <td>
                    <input type="checkbox" name="xqtianbao" id="xqtianbao" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td> 需求管理</td>
                    <td>对需求进行查看、删除、修改</td>
                    <td>
                    <input type="checkbox" name="xqgl" id="xqgl" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>需求审核</td>
                    <td>对需求进行审核</td>
                    <td>
                    <input type="checkbox" name="shenhe" id="shenhe" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>分类浏览</td>
                    <td>可以进行分类浏览</td>
                    <td>
                    <input type="checkbox" name="typefind" id="typefind" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>信息管理</td>
                    <td>可以查看，修改个人信息</td>
                    <td>
                    <input type="checkbox" name="xinxigl" id="xinxigl" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>密码修改</td>
                    <td>可以修改自己的密码</td>
                    <td>
                    <input type="checkbox" name="mimaxg" id="mimaxg" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>角色权限管理</td>
                    <td>可以进行用户管理，权限管理，角色管理</td>
                    <td>
                    <input type="checkbox" name="jsqx" id="jsqx" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>综合检索</td>
                    <td>可以进行多条件检索</td>
                    <td>
                    <input type="checkbox" name="zhjs" id="zhjs" value = "1"/>
                    </td>
                </tr>
                <tr>
                    <td>统计报表</td>
                    <td>可以按类别进行图表统计</td>
                    <td>
                    <input type="checkbox" name="tjbb" id="tjbb" value = "1"/>
                    </td>
                </tr>

            </table>
     

	</div>
 </div>
  </form>
 </div>
<div>
				<c:if test="${param.status == 1}">
					<script type="text/javascript">
					alert("修改成功");
					</script>
					</c:if>
</div>
</body>
</html>