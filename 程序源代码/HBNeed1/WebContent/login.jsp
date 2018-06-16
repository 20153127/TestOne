<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
<style type="text/css">  
        .code   
        {   
            background-image:url(login.jpg);   
            font-family:Arial;   
            font-style:italic;   
            color:Red;   
            border:0;   
            padding:2px 3px;   
            letter-spacing:3px;   
            font-weight:bolder;   
        }   
        .unchanged   
        {   
            border:0;   
        } 
        .center-in-center{
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        } 
    </style>
  <script type="text/javascript">
  
  			if(window!=top){
  				top.location.href=location.href;
  			}
	
	</script>

<script type="text/javascript">
	var code ; //在全局 定义验证码   
	//定义个数组，数组包括所有的英文和数字，通过for循环随机数出6个随机数，连接成验证码
	function createCode()   
	{    
 	 code = "";   
 	 var codeLength = 6;//验证码的长度   
  	 var checkCode = document.getElementById("checkCode");   
 	 var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的   
  	    
 	 for(var i=0;i<codeLength;i++)   
 	 {     
 		 var charIndex = Math.floor(Math.random()*36);   
 		 code +=selectChar[charIndex];   
      }   
//  alert(code);   
 	 if(checkCode)   
  	{   
  	  checkCode.className="code";   
   	 checkCode.value = code;   
  	}   
     
}
</script>
</head>
<body onload="createCode()" >
	<div class="center-in-center" >
		<table>
			<tr></tr>

		</table>

		<form role="form" action="${pageContext.request.contextPath}/userservlet?method=login"  method="post" id="checkFrom">
			<div class="form-group">
			<label for="username">账&nbsp号</label>
			<input class="form-control" name="username" type="text" id="username" placeholder="Username" value="" />
			</div>
			<div class="form-group">
			<label for="password">密&nbsp码</label>
			<input class="form-control" name="password" type="password" id="password"	placeholder="Passwword" value="" />
			</div>
			 <div class="form-group">
			
			<label for="checkcode">验证码</label>
						<input type="text" name="codeCheck" class="form-control"
							id="codeCheck" placeholder="Code">
					<input type="text" onclick="createCode()" readOnly="true" id="checkCode" class="unchanged" style="width: 80px"  />
				</div> 
				<div class="form-group">
				</div>
				<div class="form-group">
					<div class="col-md-offset-3 col-md-9">
					<!-- 登录按钮 -->
					<td>
						<input  type="submit" class="btn btn-primary btn-block" value="登录" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="create.jsp">注册</a>
					</td>
					</div>
				</div>
				<!-- 如果核对不成功，则返回该页面，并且status=1  此时用户名或者密码错误 -->
				<c:if test="${param.status.equals('1')}">
					<div class="alert alert-danger" role="alert">用户名或密码错误</div>
				</c:if>
		</form>
	</div>
</body>
</html>