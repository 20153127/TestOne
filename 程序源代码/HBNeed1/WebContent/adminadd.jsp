<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript">
$().ready(function(){
	
	$.validator.addMethod("usernp", function(value, element) {   
		var usernameReg = /^[a-zA-Z0-9_][a-zA-Z0-9_]{6,20}$/;
		return this.optional(element) || (usernameReg.test(value));
	}, "用户名不能为中文，且大于6位小于20位");
	
$("#checkForm").validate({	
		rules:{
			username:{
				required:true,
				usernp:true
		},
		password:{
			required:true
			},
		rpassword:{
			required:true,
			equalTo:password
		},
		danwei:{
			required:true
		},
		name:{
			required:true
		},
		codeCheck:{
			required:true
		},
		phone:{
			rangelength:[10,11]
		},
		shenfen:{
			rangelength:[17,18]
		}
		},
		messages:{
			username:{
				required:"用户名不能为空"
			},
			password:{
				required:"密码不能为空"
			},
			rpassword:{
				required:"重新输入的密码不能为空",
				equalTo:"两次密码不一致"
			},
			name:{
				required:"姓名不能为空",			
			},
			danwei:{
				required:"单位不能为空"
			},
			codeCheck:{
				required:"验证码不能为空"
			},	
			phone:{
				rangelength:"手机号码必须为11位"
			},	
			name:{
				required:"姓名不能为空",			
			},
			shenfen:{	
				required:"身份证号不能为空"
			}
		}
	});
});
</script>
</head>
<body>
		<form action="${pageContext.request.contextPath }/userservlet?method=createnewad" method="post" id="checkForm">
	
		<table>
			<tr>
				<td></td><td><span id="" style="color:red;">*号为必填内容</span></td>
			</tr>
			<tr>
				<td>*用户名</td>
				<td><input type="text" name="username"></td><td></td><td><span id="" style="color:red;">用户名应为大于6位小20位的字符</span></td>
			</tr>
				<tr>
				<td>*用户密码</td>
				<td><input type="password" id="password" name="password"></td><td></td><td><span id="" style="color:red;">密码不可以为空</span></td>
			</tr>
				<tr>
				<td>*确认密码</td>
				<td><input type="password" name="rpassword"><span id=""></span></td>
			</tr>
				<tr>
				<td>*姓名</td>
				<td><input type="text" name="name"></td><td></td><td><span id="">请填写真实姓名，方便与你联系</span></td>
			</tr>
			<tr>
					<td>角色</td>
					<td><select name="juese">
					<option value="填报员">填报员</option>
					<option value="审核员">审核员</option>							
					</select>		
					</td>
			</tr>
			<tr>
			<td>
				<td><input type="submit" value="提交"><span id=""></span></td>
				<td><input type="reset" value="重置"><span id=""></span></td>
			</td>
			</tr>
			</table>
			</form>
			<br>
		<br>
		<h1 align="center">${msg }</h1>
		<br>
		<br>
</body>
</html>