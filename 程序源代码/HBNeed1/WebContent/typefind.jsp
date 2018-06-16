<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分类查找</title>
	<script>
			// 定义二维数组:
			var arr = new Array(5);
			arr[0] = new Array("农业","林业","渔业","畜牧业");
			arr[1] = new Array("煤矿","石油","有色金属","非金属");
			arr[2] = new Array("食品","纺织");
			arr[3] = new Array("房屋建筑","建筑装修");
			arr[4] = new Array("批发业","零售业")
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
	<script type="text/javascript">
	 	$(function(){
	 		$("[name='daye']").change(function(){
	 			//获取市下拉选
	 			var $daye=$("[name='xiaoye']");
	 			//初始化
	 			$daye.html($("<option>").html("-请选择-"));
	 			
	 			var daye=$(this).val();
	 			//获取所有的市数组
	 			var dayes=$(arr[daye]);
	 			//alert(cities);
	 			
	 			//遍历数组,拼装成option 追加到市下拉选中
	 			dayes.each(function(){
	 				$daye.append("<option>"+this+"</option>");
	 				//$city.html($(""));
	 			});
	 		});
	 	});
	</script>	
</head>

<body bgcolor="#DDF2FC">
	<div class="table" align="center">
	<form action="${pageContext.request.contextPath }/needservlet?method=typefind" method="post"	id="checkForm">
			<table width="800" height="497.6" border="1">		
				<tr>
					<td height="60"><div align="center">研究类型</div></td>
					<td colspan="3">
					
					<div id="jsssly" class="jsssly"></div> 
					<input type="radio"	name="type" value="基础研究" height="20px" id="jichu" onclick="jiance()" >基础研究 &nbsp; 
					
					<input	type="radio" name="type" value="应用研究" height="20px"  >应用研究&nbsp; 
					
					<input type="radio" name="type" value="试验发展"	height="20px" >试验发展 &nbsp; 
					<input type="radio"	name="type" value="研究发展与成果应用" height="20px" >研究发展与成果应用&nbsp;<br>
					
					 <input type="radio" name="type"	value="技术推广与科技服务" height="20px" >技术推广与科技服务 &nbsp;
					<input type="radio" name="type"	value="其他类型研究" height="20px" id="fjichu" onclick="lyhy()">其他类型研究 &nbsp;
					</td>
				</tr>
				
				<tr id="xueke">
					<td width="141"><div align="center">学科分类</div></td>
					<td colspan="3"><input id="xueke" name="xueke" type="text"
						style="width: 98%" height="98%" /></td>
				</tr>
				
				<tr id="ly">
					
							<td>行业</td>
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
				<br> <br>
			<div align="center">
				<input id="upload" type="submit" value="查询"	style="hight: 80px; width: 100px">
			</div>
	</form>
	</div>
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
			$("#xueke").show();
		}else{
			$("#xueke").hide();
		}
	}

</script>
<script type="text/javascript">
$(document).ready(function(){
	if($("#fjichu").is(':checked')){
		$("#ly").show();
	}else{
		$("#ly").hide();
	}
});
	function lyhy(){
		if($("#fjichu").is(':checked')){
			$("#ly").show();
		}else{
			$("#ly").hide();
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