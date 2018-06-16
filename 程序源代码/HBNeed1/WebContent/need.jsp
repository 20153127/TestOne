<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业需求</title>
	<script>
			// 定义二维数组:
			var arr = new Array(5);
			arr[0] = new Array("农业","林业","渔业","畜牧业");
			arr[1] = new Array("煤矿","石油","有色金属","非金属");
			arr[2] = new Array("食品","纺织");
			arr[3] = new Array("房屋建筑","建筑装修");
			arr[4] = new Array("批发业","零售业");
	</script>
		<script>
			// 定义二维数组:
			var arr1 = new Array(5);
			arr1[0] = new Array("理论数学","应用数学");
			arr1[1] = new Array("标准英语","专业英语");
			arr1[2] = new Array("无机化学","有机化学");
	</script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>	
<script type="text/javascript">
$().ready(function(){
	$("#checkForm").validate({	
		rules:{
			
		phone:{
			rangelength:[10,11]
		},
		name:{
			required:true
		},
		txaddress:{
			required:true
		},diyu:{
			required:true
		},email:{
			required:true
		},daibiao:{
			required:true
		},jigou:{
			required:true
		},info:{
			required:true
		},needname:{
			required:true
		},begin:{
			required:true
		},end:{
			required:true
		},info1:{
			required:true
		},key1:{
			required:true
		},key2:{
			required:true
		},key3:{
			required:true
		},key4:{
			required:true
		},key5:{
			required:true
		},type:{
			required:true
		},model:{
			required:true
		}
		
		
		},
		messages:{
			
			phone:{
				rangelength:"手机号码必须为11位"
			},
			
			name:{
				required:"机构全称不能为空"
			},
			txaddress:{
				required:"通讯地址不能为空"
			},diyu:{
				required:"所在地域不能为空"
			},email:{
				required:"电子邮箱不能为空"
			},daibiao:{
				required:"法人代表不能为空"
			},jigou:{
				required:"属性机构不能为空"
			},info:{
				required:"机构简介不能为空"
			},needname:{
				required:"技术需求名称不能为空"
			},begin:{
				required:"开始时间不能为空"
			},end:{
				required:"结束时间不能为空"
			},info1:{
				required:"技术需求概述不能为空"
			},key1:{
				required:"关键字不能为空"
			},key2:{
				required:"关键字不能为空"
			},key3:{
				required:"关键字不能为空"
			},key4:{
				required:"关键字不能为空"
			},key5:{
				required:"关键字不能为空"
			},type:{
				required:"科技活动类型不能为空"
			},model:{
				required:"技术解决方式不能为空"
			}
		}
	});
});
</script>

<!-- css  js文件链接 -->
<!-- 上传信息 -->
<!-- css  js文件链接 -->

<script type="text/javascript">
	 	$(function(){
	 		$("[name='daye']").change(function(){
	 			
	 			var $daye=$("[name='xiaoye']");
	 		
	 			$daye.html($("<option>").html("-请选择-"));
	 			
	 			var daye=$(this).val();
	 			
	 			var dayes=$(arr[daye]);
	 			
	 			dayes.each(function(){
	 				$daye.append("<option>"+this+"</option>");
	 			});
	 		});
	 	});
	 	
	</script>
	<script type="text/javascript">
	 	$(function(){
	 		$("[name='xuekeda']").change(function(){
	 			
	 			var $xuekeda=$("[name='xuekexiao']");
	 		
	 			$xuekeda.html($("<option>").html("-请选择-"));
	 			
	 			var xuekeda=$(this).val();
	 			
	 			var xuekes=$(arr1[xuekeda]);
	 			
	 			xuekes.each(function(){
	 				$xuekeda.append("<option>"+this+"</option>");
	 			});
	 		});
	 	});
	 	
	</script>
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
		<form action="${pageContext.request.contextPath }/needservlet?method=add" method="post"	id="checkForm">
			<table width="800" height="497.6" border="1">
				<tr>
				
					<td width="141"><div align="center"><font style="color:red">*机构全称</font></div></td>
					<td>
					<input id="name" name="name" type="text"	style="width: 240px" height="98%" /></td>
					<td width="141"><div align="center">归口管理部门</div></td>
					<td>
					<input id="bumen" name="bumen" type="text"	style="width: 98%" height="98%" /></td>
				
				</tr>
				
				<tr>
					<td width="141"><div align="center">*通讯地址</div></td>
					<td>
					<input id="txaddress" name="txaddress" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">*所在地域</div></td>
					<td>
					<input id="diyu" name="diyu" type="text"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center" ><font style="color:red">网址</font></div></td>
					<td>
					<input id="danweiwz" name="danweiwz" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">*电子信箱</div></td>
					<td>
					<input id="email" name="email" type="text"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">*法人代表</div></td>
					<td>
					<input id="daibiao" name="daibiao" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">邮政编码</div></td>
					<td>
					<input id="bianma" name="bianma" type="text"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td rowspan="2">*联系人</td>
					<td rowspan="2"><input type="text" name="lianxi"
						style="border: 1px solid #378888;width:98%"  ></td>
						
					<td >*电话</td>
					<td >
					1.固定<input type="text" name="dianhua" style="border: 1px solid #378888; width: 70px"> 
					
					2.手机<input type="text" id="phone"	name="phone" style="border: 1px solid #378888; width: 70px"
					>
					</td>
				</tr>

				<tr>

					<td >传真</td>
					<td><input type="text" name="chuanzhen"
						style="border: 1px solid #378888" ></td>
				</tr>

				
				
				<tr>
					<td width="141"><div align="center"> 属性机构</div></td>
					<td colspan="3">
					<input id="jigou" name="jigou" type="radio" value="企业"	 height="98%" />企业 &nbsp;
					<input id="jigou" name="jigou" type="radio" value="高等院校"	 height="98%" />高等院校 &nbsp;
					<input id="jigou" name="jigou" type="radio" value="研究机构"	height="98%" />研究机构 &nbsp;
					<input id="jigou" name="jigou" type="radio" value="其他"	 height="98%" />其他 &nbsp;
					</td>
				</tr>
				<tr>
					<td height="100" colspan="4">
					
					<textarea maxlength="200" name="info"	style="height: 150px; width: 789px" onfocus="if(value=='*机构简介（主要包括基本情况、现有研究基础等，限500字以内）'){value=''}"   onblur="if (value ==''){value='*机构简介（主要包括基本情况、现有研究基础等，限500字以内）'}">*机构简介（主要包括基本情况、现有研究基础等，限500字以内）</textarea></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">*技术需求名称</div></td>
					<td>
					<input id="needname" name="needname" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">*需求时限</div></td>
					<td>
					<input id="begin" name="begin" type="text"	style="width: 50px" height="98%" />
						年至
					<input id="end" name="end" type="text"	style="width: 50px" height="98%" />
						年
					</td>
				
				</tr>
				
					<tr>
					<td height="100" colspan="4">
					
					<textarea maxlength="500" name="info1"	style="height: 255px; width: 789px" onfocus="if(value=='*技术需求概述1、主要问题（需要解决的重大技术问题，限500字以内）2、技术关键（所需的关键技术、主要指标，限500字以内）3、预期目标（技术创新性、经济社会效益，限500字以内）'){value=''}"   onblur="if (value ==''){value='*技术需求概述1、主要问题（需要解决的重大技术问题，限500字以内）2、技术关键（所需的关键技术、主要指标，限500字以内）3、预期目标（技术创新性、经济社会效益，限500字以内）'}">*技术需求概述1、主要问题（需要解决的重大技术问题，限500字以内）2、技术关键（所需的关键技术、主要指标，限500字以内）3、预期目标（技术创新性、经济社会效益，限500字以内）</textarea></td>
				</tr>
				<tr>
					<td height="40"><div align="center">关键字</div></td>
					<td>
					<input id="key1" name="key1" type="text"	style="width: 80px" height="98%" />
					<input id="key2" name="key2" type="text"	style="width: 80px" height="98%" /></td>
					
					<td>
					<input id="key3" name="key3" type="text"	style="width: 80px" height="98%" /></td>
					<td>
					<input id="key4" name="key4" type="text"	style="width: 80px" height="98%" />
					<input id="key5" name="key5" type="text"	style="width: 80px" height="98%" />
					</td>
				
				</tr>
				<tr>
				<td height="60"><div align="center">拟投入资金总额</div></td>
					<td colspan="3">
					<input id="money" name="money" type="text"	style="width: 80px" height="98%" />
					万元
				</tr>
				<tr>
					<td height="70"><div align="center">技术需求解决方式</div></td>
					<td colspan="3">
						<div id="jsssly" class="jsssly"></div>
						 <input type="radio"	name="model" value="独立开发">独立开发 &nbsp; 
						 <input type="radio"	name="model" value="委托研发">委托研发&nbsp;<br> 
						 <input	type="radio" name="model" value="合作研发">合作研发 &nbsp; 
						 <input	type="radio" name="model" value="其他">其他 &nbsp;
					</td>
				</tr>
				<tr>
					<td height="60"><div align="center">科技活动类型</div></td>
					<td colspan="3">
					
					<div id="jsssly" class="jsssly"></div> 
					<input type="radio"	name="type" value="基础研究" height="20px" id="jichu" onclick="jiance() " >基础研究 &nbsp; 
					
					<input	type="radio" name="type" value="应用研究" height="20px" id="fjichu4" onclick="lyhy()" >应用研究&nbsp; 
					<input type="radio" name="type" value="试验发展"	height="20px" id="fjichu3" onclick="lyhy()" >试验发展 &nbsp; 
					<input type="radio"	name="type" value="研究发展与成果应用" height="20px" id="fjichu2" onclick="lyhy()" >研究发展与成果应用&nbsp;<br>
					
					 <input type="radio" name="type"	value="技术推广与科技服务 " height="20px" id="fjichu1" onclick="lyhy()" >技术推广与科技服务 &nbsp;
					<input type="radio" name="type"	value="其他类型研究 " height="20px" id="fjichu" onclick="lyhy()">生产性活动 &nbsp;
					</td>
				</tr>
				
				<tr id="xueke">
					<td>学科分类</td>
					<td>
				<select name="xuekeda">
					<option>--学科分类--</option>
					<option value="0">数学类</option>
					<option value="1">英语类</option>
					<option value="2">化学类</option>
				</select></td>
				<td><select name="xuekexiao">
				<option >请选择</option>
				</select></td>
				</tr>
				
				<tr id="ly">
						<td width="141"><div align="center"> 需求技术所属领域</div></td>
					<td colspan="3">
					
					<input id="lingyu" name="lingyu" type="checkbox" value="电子信息技术"	 height="98%" />电子信息技术 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="光机电一体化"	 height="98%" />光机电一体化 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="软件"	height="98%" />软件 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="生物制药技术"	 height="98%" />生物制药技术 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="新材料及应用技术"	 height="98%" />新材料及应用技术 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="先进制造技术"	 height="98%" />先进制造技术 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="现代农业技术"	 height="98%" />现代农业技术 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="新能源与高效节能技术"	 height="98%" />新能源与高效节能技术 &nbsp;
					<input id="lingyu" name="lingyu" type="checkbox" value="资源与环境保护新技术"	 height="98%" />资源与环境保护新技术 &nbsp;
					<input id="qita" name="lingyu" type="checkbox" value="其他技术"  onclick="qt()"	 height="98%" />其他技术 &nbsp;
					</td>
					<br/>
					</tr>
					<tr id="hy">
							<td>需求技术应用行业</td>
				<td>
				<select name="daye">
					<option>--行业--</option>
					<option value="0">农林牧渔业</option>
					<option value="1">采矿业</option>
					<option value="2">制造业</option>
					<option value="3">建筑业</option>
					<option value="4">批发零售业</option>
				</select></td>
				<td><select name="xiaoye">
				<option >请选择</option>
				</select></td>
					</tr>
			<tr>
		
				
			</tr>		
					<tr id="qit" >
					<td width="141"><div align="center">其他技术</div></td>
					<td colspan="3">
					<input id="qtjishu" name="qtjishu" type="text" style="width: 98%" height="98%" /></td>
				</tr>
									
			
			</table>
			<br> <br> <br> <br>
			<div align="center">
				<input id="upload" type="submit" value="提交并保存"	style="hight: 80px; width: 100px">
			</div>
		</form>
	</div>
	<br>
	<br>
	<h1 align="center">${msg }</h1>
	<br>
	<br>
</body>
<script type="text/javascript">
$(document).ready(function(){
	if($("#jichu").is(':checked')){
		$("#xueke").show();

	}else{
		$("#xueke").hide();
	}
});
	function jiance(){
		if($("#jichu").is(':checked')){
			$("#qit").hide();
			$("#ly").hide();
			$("#hy").hide();
			$("#xueke").show();
		}else{
			$("#qit").hide();
			$("#xueke").hide();
		}
	}

</script>
<script type="text/javascript">
$(document).ready(function(){
	if($("#fjichu").is(':checked')||$("#fjichu1").is(':checked')||$("#fjichu2").is(':checked')||$("#fjichu3").is(':checked')||$("#fjichu4").is(':checked')){
		$("#qit").hide();
		$("#ly").show();
		$("#hy").show();
	}else{
		$("#qit").hide();
		$("#ly").hide();
		$("#hy").hide();
	}
});
	function lyhy(){
		if($("#fjichu").is(':checked')||$("#fjichu1").is(':checked')||$("#fjichu2").is(':checked')||$("#fjichu3").is(':checked')||$("#fjichu4").is(':checked')){
			$("#xueke").hide();
			$("#qit").hide();
			$("#ly").show();
			$("#hy").show();
		}else{
			$("#qit").hide();
			$("#ly").hide();
			$("#hy").hide();
		}
	}

</script>
<script type="text/javascript">
$(document).ready(function(){
	if($("#qita").is(':checked')){	
		$("#qit").show();
		
	}else{
		$("#qit").hide();
	}
});
	function qt(){
		if($("#qita").is(':checked')){
			$("#qit").show();
		}else{
			$("#qit").hide();
		}
	}

</script>
</html>