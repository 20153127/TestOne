<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			arr[4] = new Array("批发业","零售业")
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
<body bgcolor="#DDF2FC" >
	<div>
		<h1 align="center"></h1>
	</div>
	<div class="table" align="center">
		<form action="${pageContext.request.contextPath }/needservlet?method=add" method="post"	id="checkForm">
			<table width="800" height="497.6" border="1">
				<tr>
				
					<td width="141"><div align="center"><font style="color:red">*机构全称</font></div></td>
					<td>
					<input id="name" name="name" type="text" value="${b.name}"	style="width: 240px" height="98%" /></td>
					<td width="141"><div align="center" ">归口管理部门</div></td>
					<td>
					<input id="bumen" name="bumen" type="text" value="${b.bumen}"	style="width: 98%" height="98%" /></td>
				
				</tr>
				
				<tr>
					<td width="141"><div align="center">*通讯地址</div></td>
					<td>
					<input id="txaddress" name="txaddress" value="${b.txaddress}" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">*所在地域</div></td>
					<td>
					<input id="diyu" name="diyu" type="text" value="${b.diyu}"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center" ><font style="color:red">网址</font></div></td>
					<td>
					<input id="danweiwz" name="danweiwz" value="${b.danweiwz}" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">*电子信箱</div></td>
					<td>
					<input id="email" name="email" type="text" value="${b.email}"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">*法人代表</div></td>
					<td>
					<input id="daibiao" name="daibiao" value="${b.daibiao}" type="text"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">邮政编码</div></td>
					<td>
					<input id="bianma" name="bianma" type="text" value="${b.bianma}"	style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr>
					<td rowspan="2">*联系人</td>
					<td rowspan="2"><input type="text" name="lianxi"
					value="${b.lianxi}"	style="border: 1px solid #378888;width:98%"  ></td>
						
					<td >*电话</td>
					<td >
					1.固定<input type="text" value="${b.dianhua}" name="dianhua" style="border: 1px solid #378888; width: 70px"> 
					
					2.手机<input type="text" id="phone" value="${b.phone}"	name="phone" style="border: 1px solid #378888; width: 70px"
					>
					</td>
				</tr>

				<tr>

					<td >传真</td>
					<td><input type="text" name="chuanzhen"
						style="border: 1px solid #378888" value="${b.chuanzhen}" ></td>
				</tr>

				
				
				<tr>
					<td width="141"><div align="center"> 属性机构</div></td>
					<td colspan="3">
					<c:if test="${b.jigou=='企业'}" >
					<input id="jigou" name="jigou" type="radio" value="企业"	 checked="checked" height="98%" />企业 &nbsp;
					</c:if>
					<c:if test="${b.jigou!='企业'}" >
					<input id="jigou" name="jigou" type="radio" value="企业"	 height="98%" />企业 &nbsp;
					</c:if>
						<c:if test="${b.jigou=='高等院校'}" >
					<input id="jigou" name="jigou" type="radio" value="高等院校" checked="checked"	 height="98%" />高等院校 &nbsp;
					</c:if>
					<c:if test="${b.jigou!='高等院校'}" >
					<input id="jigou" name="jigou" type="radio" value="高等院校"	 height="98%" />高等院校 &nbsp;
					</c:if>
					<c:if test="${b.jigou=='研究机构'}" >
					<input id="jigou" name="jigou" type="radio" value="研究机构" checked="checked"	height="98%" />研究机构 &nbsp;
					</c:if>
					<c:if test="${b.jigou!='研究机构'}" >
					<input id="jigou" name="jigou" type="radio" value="研究机构" 	height="98%" />研究机构 &nbsp;
					</c:if>
					<input id="jigou" name="jigou" type="radio" value="其他"	 height="98%" />其他 &nbsp;
					</td>
				</tr>
				<tr>
					<td height="100" colspan="4">
					
					<textarea maxlength="200" name="info"	style="height: 150px; width: 789px" >${b.info}</textarea></td>
				</tr>
				
				<tr>
					<td width="141"><div align="center">*技术需求名称</div></td>
					<td>
					<input id="needname" name="needname" type="text" value="${b.needname}"	style="width: 98%" height="98%" /></td>
					<td width="141"><div align="center">*需求时限</div></td>
					<td>
					<input id="begin" name="begin" type="text" value="${b.begin}"	style="width: 50px" height="98%" />
						年至
					<input id="end" name="end" type="text" value="${b.end}"	style="width: 50px" height="98%" />
						年
					</td>
				
				</tr>
				
					<tr>
					<td height="100" colspan="4">
					
					<textarea maxlength="500" name="info1"	style="height: 255px; width: 789px" >${b.info1}</textarea></td>
				</tr>
				<tr>
					<td height="40"><div align="center">关键字</div></td>
					<td>
					<input id="key1" name="key1" type="text" value=""	style="width: 80px" height="98%" />
					<input id="key2" name="key2" type="text" value=""	style="width: 80px" height="98%" /></td>
					
					<td>
					<input id="key3" name="key3" type="text" value=""	style="width: 80px" height="98%" /></td>
					<td>
					<input id="key4" name="key4" type="text" value=""	style="width: 80px" height="98%" />
					<input id="key5" name="key5" type="text" value=""	style="width: 80px" height="98%" />
					</td>
				
				</tr>
				<tr>
				<td height="60"><div align="center">拟投入资金总额</div></td>
					<td colspan="3">
					<input id="key3" name="key3" type="text" value="${b.money}"	style="width: 80px" height="98%" />
					万元
				</tr>
				<tr>
					<td height="70"><div align="center">技术需求解决方式</div></td>
					<td colspan="3">
						<div id="jsssly" class="jsssly"></div>
							<c:if test="${b.model=='独立开发'}" >
						 <input id="duli" type="radio"	name="model" value="独立开发" checked="checked">独立开发 &nbsp; 
						 </c:if>
						 <c:if test="${b.model!='独立开发'}" >
						 <input id="duli" type="radio"	name="model" value="独立开发" >独立开发 &nbsp; 
						 </c:if>
						 <c:if test="${b.model=='委托研发'}" >
						 <input id="weituo" type="radio"	name="model" value="委托研发" checked="checked">委托研发&nbsp;<br> 
						 </c:if>
						  <c:if test="${b.model!='委托研发'}" >
						 <input id="weituo" type="radio"	name="model" value="委托研发">委托研发&nbsp;<br> 
						 </c:if>
						  <c:if test="${b.model=='合作研发 '}" >
						 <input id="hezuo"	type="radio" name="model" value="合作研发" checked="checked">合作研发 &nbsp; 
						 </c:if>
						 <c:if test="${b.model!='合作研发 '}" >
						 <input id="hezuo"	type="radio" name="model" value="合作研发" >合作研发 &nbsp; 
						 </c:if>
						 <c:if test="${b.model=='其他 '}" >
						 <input id="qqta"	type="radio" name="model" value="其他" checked="checked">其他 &nbsp;
						 </c:if>
						  <c:if test="${b.model!='其他 '}" >
						 <input id="qqta"	type="radio" name="model" value="其他">其他 &nbsp;
						 </c:if>
					</td>
				</tr>
				<tr>
					<td height="60"><div align="center">科技活动类型</div></td>
					<td colspan="3">
					
					<div id="jsssly" class="jsssly"></div> 
					<c:if test="${b.type=='基础研究'}">
						<input  type="radio"	name="type" value="基础研究" height="20px" id="jichu" onclick="jiance() " checked="checked" >基础研 究 &nbsp; 
					</c:if>
					<c:if test="${b.type!='基础研究'}">
						<input  type="radio"	name="type" value="基础研究" height="20px" id="jichu" onclick="jiance() " >基础研究 &nbsp; 
					</c:if>
					
					<c:if test="${b.type=='应用研究'}">
					<input	type="radio" name="type" value="应用研究" height="20px" id="fjichu4" onclick="lyhy()" checked="checked" >应用研究&nbsp; 
					</c:if>
					<c:if test="${b.type!='应用研究'}">
					<input	type="radio" name="type" value="应用研究" height="20px" id="fjichu4" onclick="lyhy()" >应用研究&nbsp; 
					</c:if>
					
					<c:if test="${b.type=='试验发展'}">
					<input type="radio" name="type" value="试验发展"	height="20px" id="fjichu3" onclick="lyhy()" checked="checked" >试验发展 &nbsp; 
					</c:if>
					<c:if test="${b.type!='试验发展'}">
					<input type="radio" name="type" value="试验发展"	height="20px" id="fjichu3" onclick="lyhy()"  >试验发展 &nbsp; 
					</c:if>
					<c:if test="${b.type=='研究发展与成果应用'}">
					<input type="radio"	name="type" value="研究发展与成果应用" height="20px" id="fjichu2" onclick="lyhy()" checked="checked" >研究发展与成果应用&nbsp;<br>
					</c:if>
					<c:if test="${b.type!='研究发展与成果应用'}">
					<input type="radio"	name="type" value="研究发展与成果应用" height="20px" id="fjichu2" onclick="lyhy()" >研究发展与成果应用&nbsp;<br>
					</c:if>
					<c:if test="${b.type=='技术推广与科技服务'}">
					 <input type="radio" name="type"	value="技术推广与科技服务 " height="20px" id="fjichu1" onclick="lyhy()"  checked="checked">技术推广与科技服务 &nbsp;
					</c:if>
					<c:if test="${b.type!='技术推广与科技服务'}">
					 <input type="radio" name="type"	value="技术推广与科技服务 " height="20px" id="fjichu1" onclick="lyhy()" >技术推广与科技服务 &nbsp;
					</c:if>
					<c:if test="${b.type=='生产性活动 '}">
					<input type="radio" name="type"	value="其他类型研究 " height="20px" id="fjichu" onclick="lyhy()" checked="checked">生产性活动 &nbsp;
					</c:if>
					<c:if test="${b.type!='生产性活动 '}">
					<input type="radio" name="type"	value="其他类型研究 " height="20px" id="fjichu" onclick="lyhy()">生产性活动 &nbsp;
					</c:if>
					</td>
				</tr>
				
			<tr id="xueke">
					<td>学科分类</td>
					<td>
				<select name="xuekeda">
					<option>${b.xuekeda} </option>
					<option value="0">数学类</option>
					<option value="1">英语类</option>
					<option value="2">化学类</option>
				</select></td>
				<td><select name="xuekexiao">
				<option >${b.xuekexiao}</option>
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
					<option>${b.daye}</option>
					<option value="0">农林牧渔业</option>
					<option value="1">采矿业</option>
					<option value="2">制造业</option>
					<option value="3">建筑业</option>
					<option value="4">批发零售业</option>
				</select></td>
				<td><select name="xiaoye">
				<option >${b.xiaoye}</option>
				</select></td>
					</tr>
			<tr>
		
				
			</tr>		
					<tr id="qit" >
					<td width="141"><div align="center">其他技术</div></td>
					<td colspan="3">
					<input id="qtjishu" name="qtjishu"	value="${b.qtjishu}" type="text" style="width: 98%" height="98%" /></td>
				</tr>
									
			
			</table>
			<br> <br> <br> <br>
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
/* 	var items1=new Array(5);
	var items1[0]=document.getElementById("key1");
	var items1[1]=document.getElementById("key2");
	var items1[2]=document.getElementById("key3");
	var items1[3]=document.getElementById("key4");
	var items1[4]=document.getElementById("key5");
	var keyss="${b.keys}".split(",");
	for(var i=0;i<items1.length;i++){
				items1[i].value=keyss[i];		
	} */
	var keyss="${b.keys}".split(",");
	$("#key1").val(keyss[0]);
	$("#key2").val(keyss[1]);
	$("#key3").val(keyss[2]);
	$("#key4").val(keyss[3]);
	$("#key5").val(keyss[4]);
});

</script>
<script type="text/javascript">
$(document).ready(function(){
	if($("#fjichu").is(':checked')||$("#fjichu1").is(':checked')||$("#fjichu2").is(':checked')||$("#fjichu3").is(':checked')||$("#fjichu4").is(':checked')){
		$("#qit").hide();
		$("#ly").show();
		$("#hy").show();	
		var items1=document.getElementsByName("lingyu");
		var lingyus="${b.lingyu}".split(",");
		for(var i=0;i<items1.length;i++){
			for(var j=0;j<lingyus.length;j++){
				if(items1[i].value==lingyus[j]){
					items1[i].checked="checked";
				}
				
			}
			
		}
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
			var items1=ducument.getElementsByName("lingyu");
			var lingyus="${b.lingyu}".split(",");
			for(var i=0;i<items1.length;i++){
				for(var j=0;j<lingyus.length;j++){
					if(items1[i].value==lingyus[j]){
						items1[i].checked="checked";
					}
					
				}
				
			}
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
<script type="text/javascript">
/* $(document).ready(function(){
	if(${b.model}.equals("独立开发")){	
		$("#duli").attr("checked", true);	
	}else if(${b.model}.equals("委托研发")){
		$("#weituo").attr("checked", true);
	}else if(${b.model}.equals("合作开发")){
		$("#hezuo").attr("checked", true);
	}else if(${b.model}.equals("其他")){
		$("#qqta").attr("checked", true);
	}
	
}); */
	function qt(){
		if($("#qita").is(':checked')){
			$("#qit").show();
		}else{
			$("#qit").hide();
		}
	}

</script>
</html>