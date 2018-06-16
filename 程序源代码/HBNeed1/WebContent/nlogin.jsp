<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>登录界面</title>

<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/loginbg.jpg);
	background-repeat: repeat-x;
}
-->
</style>

<script type="text/javascript">

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images)
  { 
	  if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0)
    { 
    	d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];
    	}
    }
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
<!--光标控件-->
function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

</script>

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
<body bgcolor="#FFFFFF" onLoad="MM_preloadImages('images/login000_06.jpg','images/loging000_07.jpg');createCode()">

<table width="795" height="475" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
<tr>
		<td colspan="5">
			<img src="images/login_01.jpg" width="795" height="159" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/login_02.jpg" width="269" height="174" alt=""></td>
		<td bgcolor="#CFE5F2">
			<img src="images/login_03.jpg" width="66" height="115" alt=""></td>
		<td colspan="2" bgcolor="#D0E6F3">
		
		<form role="form"  action="${pageContext.request.contextPath}/userservlet?method=login"  method="post" id="checkFrom">
		<table width="100%" height="116" border="0" cellpadding="0" cellspacing="0">
	     
	      	
	      
	      <tr>
	        <td colspan="2" align="left" valign="bottom">
	        <!-- 用户名框 -->
	        <INPUT NAME="username" TYPE="text" CLASS="STYLE1" STYLE="width:180px; height:17px; border:#336699 1px solid" tabindex="1" MAXLENGTH="26"></td>
        
          </tr>
	     
	      <tr>
	        <td height="32" colspan="2" align="left" valign="bottom">
	        <!-- 密码框 -->
	        <INPUT NAME="password" TYPE="password" CLASS="STYLE1" STYLE="width:180px; height:17px; border:#336699 1px solid" tabindex="1" MAXLENGTH="26"></td>
          </tr>
	      <tr>
	      
	        <td width="50%" height="29" align="left" valign="bottom">
	        <!-- 验证码框 -->
	        <INPUT id="code" NAME="checkcode" TYPE="text" CLASS="STYLE1" STYLE="width:100px; height:17px; border:#336699 1px solid" tabindex="1" MAXLENGTH="26">
       <input type="text"  onclick="createCode()" readOnly="true" id="checkCode" class="unchanged" style="width: 80px"  /></td>
               
        
        
         </tr>
	     
	      <tr>
	        <td height="30" colspan="1" align="left" valign="bottom">&nbsp;</td>
	      </tr>
	      <!-- 如果核对不成功，则返回该页面，并且status=1  此时用户名或者密码错误 -->
				<c:if test="${param.status.equals('1')}">
					<div class="alert alert-danger" role="alert">用户名或密码错误</div>
				</c:if>
	     
      </table>
      
       </form>
      </td>
<td rowspan="2">
			<img src="images/login_05.jpg" width="262" height="174" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
		
		<a href="javascript:void(0);"  onclick="tijiao()" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image12','','images/loging000_06.jpg',1)">
		<img src="images/login_06.jpg" name="Image12" width="135" height="59" border="0"></a></td>
		

	<td><a href="create.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image13','','images/loging000_07.jpg',1)">
	
	<img src="images/login_07.jpg" name="Image13" width="129" height="59" border="0"></a></td>
  </tr>
	<tr>
		<td colspan="5">
			<img src="images/login_08.jpg" width="795" height="141" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="269" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="66" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="69" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="129" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="262" height="1" alt=""></td>
	</tr>
</table>
<!-- End Save for Web Slices -->
<script type="text/javascript">
function tijiao(){
	var code = document.getElementById("code").value;
	var create = document.getElementById("checkCode").value;
	if(code == create)
	{document.getElementById("checkFrom").submit();}
	else{
		alert("验证码为空或错误");
	}
	}
</script>

</body>
</html>