<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
	<script>
			// 定义二维数组:
			var arr = new Array(5);
			arr[0] = new Array("北京");
			arr[1] = new Array("天津");
			arr[2] = new Array("上海");
			arr[3] = new Array("重庆");
			arr[4] = new Array("石家庄","秦皇岛","唐山","保定","张家口","廊坊","沧州","衡水","承德","邢台","邯郸");
			arr[5] = new Array("太原","大同","朔州","阳泉","长治","忻州","吕梁","晋中","临汾","运城","晋城");
			arr[6] = new Array("沈阳","大连","鞍山","抚顺","本溪","丹东","锦州","营口","阜新市","辽阳","盘锦","铁岭","朝阳","葫芦岛");
			arr[7] = new Array("长春","吉林","四平","辽源","通化","白山","白城","通化");
			arr[8] = new Array("哈尔滨","齐齐哈尔","鸡西","鹤岗","双鸭山","大庆","伊春","佳木斯市","七台河","牡丹江","黑河","绥化");
			arr[9] = new Array("南京","徐州","连云港","宿迁","淮安","扬州","盐城","南通","泰州","苏州","常州","无锡","镇江");
			arr[10] = new Array("杭州","宁波","温州","嘉兴","湖州","绍兴","绍兴","衢州","舟山","台州","丽水");
			arr[11] = new Array("合肥","芜湖","马鞍山","铜陵","池州","宣城","黄山","巢湖","六安","安庆","淮南","淮北","蚌埠","阜阳","宿州","亳州","滁州");
			arr[12] = new Array("福州","厦门","莆田","宁德","泉州","漳州","龙岩","三明","南平");
			arr[13] = new Array("南昌	","九江","赣州","吉安","萍乡","鹰潭","新余","宜春","上饶","景德镇","抚州");
			arr[14] = new Array("济南","青岛","淄博","枣庄","东营","烟台","潍坊","济宁","泰安","威海","日照","莱芜","临沂","德州","聊城","滨州","菏泽");
			arr[15] = new Array("郑州","开封","洛阳","洛阳","漯河","许昌","三门峡","平顶山","周口","驻马店","新乡","鹤壁","焦作","濮阳","安阳","商丘","商丘","济源");
			arr[16] = new Array("武汉","黄石","襄樊","十堰","荆州","宜昌","荆门","鄂州","孝感","黄冈","咸宁","随州","恩施");
			arr[17] = new Array("长沙","株洲","湘潭","衡阳","邵阳","岳阳","张家界","益阳","常德","娄底","郴州","永州","怀化","西土家族苗族自治州");
			arr[18] = new Array("广州","深圳","珠海","汕头","韶关","佛山","江门","湛江","茂名","肇庆","惠州","梅州","汕尾","河源","阳江","清远","东莞","中山","潮州","揭阳","云浮");
			arr[19] = new Array("海口","三亚","三沙","儋州");
			arr[20] = new Array("成都","自贡"," 攀枝花","泸州","德阳","绵阳","广元","遂宁","内江","乐山","南充","宜宾","广安","达州","眉山","雅安","巴中","资阳","阿坝","甘孜","凉山");
			arr[21] = new Array("贵阳","清镇","六盘水","遵义","赤水","仁怀","安顺","都匀","福泉","兴义","凯里","铜仁 ","毕节");
			arr[22] = new Array("昆明","曲靖","昭通","玉溪","楚雄","红河","文山","普洱","版纳","大理","保山","德宏","丽江","怒江","迪庆","临沧");
			arr[23] = new Array("西安","咸阳","商洛","安康","汉中","延安","渭南","铜川","榆林");
			arr[24] = new Array("兰州","嘉峪关","金昌","白银","天水","武威","张掖","酒泉","平凉","庆阳","定西","陇南","临夏回族自治州","甘南藏族自治州");
			arr[25] = new Array("格尔木","西宁","玉树","果洛","海东","海西","海南","海北");
			arr[26] = new Array("台北","新北","台中","台南","高雄");
			arr[27] = new Array("呼和浩特","包头","乌海","赤峰","通辽","鄂尔多斯","呼伦贝尔","巴彦淖尔","乌兰察布");
			arr[28] = new Array("南宁","柳州","桂林","梧州","北海","防城港","钦州","贵港","玉林","百色","贺州","河池","来宾","崇左");
			arr[29] = new Array("拉萨","日喀则");
			arr[30] = new Array("银川","石嘴山","吴忠","固原","中卫");
			arr[31] = new Array("乌鲁木齐","克拉玛依");
			arr[32] = new Array("中西区","东区","南区","湾仔区","九龙");
			arr[33] = new Array("澳门");
			
	</script>

<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/myValidate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>

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
<script type="text/javascript"  >
	 	$(function(){
	 		$("[name='sheng']").change(function(){
	 			//获取市下拉选
	 			var $city=$("[name='shi']");
	 			//初始化
	 			$city.html($("<option>").html("-请选择-"));
	 			
	 			var sheng=$(this).val();
	 			//获取所有的市数组
	 			var cities=$(arr[sheng]);
	 			//alert(cities);
	 			
	 			//遍历数组,拼装成option 追加到市下拉选中
	 			cities.each(function(){
	 				$city.append("<option>"+this+"</option>");
	 				//$city.html($(""));
	 			});
	 		});
	 	});
	</script>
</head>
<body onload="createCode()"	bgcolor="#DDF2FC">
	<div align="center">
	<form action="${pageContext.request.contextPath }/userservlet?method=changexinxi" method="post"	id="checkForm">
	<input type="hidden" name="id" value="${userb.id }">
		<table>
			<tr>
				<td></td><td><span id="" style="color:red;">*号为必填内容</span></td>
			</tr>
			<tr>
				<td>*用户名</td>
				<td><input type="text" value="${userb.username }" name="username"></td><td></td><td><span id="" style="color:red;">用户名应为大于6位小20位的字符</span></td>
			</tr>
				<tr>
				<td>*姓名</td>
				<td><input type="text" value="${userb.name }" name="name"></td><td></td><td><span id="">请填写真实姓名，方便与你联系</span></td>
			</tr>
			<tr>
				<td>*身份证号</td>
				<td><input type="text" value="${userb.shenfen }" name="shenfen"></td><td></td><td><span id="">请填写正确的身份证号</span></td>
			</tr>
			
				<tr>
				<td>性别</td>
				<td>
				<c:if test="${userb.sex=='男'}" >
				<input type="radio" name="sex" checked="checked" value="男">男
				</c:if>
				<c:if test="${userb.sex!='男'}" >
				</c:if>
				<c:if test="${userb.sex=='女'}" >
				<input type="radio" name="sex" checked="checked" value="女">女
				</c:if>
				<c:if test="${userb.sex!='女'}" >
				<input type="radio" name="sex" value="女">女
				</c:if>
				
				</td>
				
			</tr>
			<tr>
				<tr>
				<td>国家/省市</td>
				<td><select name="sheng">
					<option>${userb.sheng }</option>
					<option value="0">北京市</option>
					<option value="1">天津市</option>
					<option value="2">上海市</option>
					<option value="3">重庆市</option>
					<option value="4">河北省</option>
		 			<option value="5">山西省</option>
					<option value="6">辽宁省</option>
					<option value="7">吉林省</option>
					<option value="8">黑龙江省</option>
					<option value="9">江苏省</option>
					<option value="10">浙江省</option>
				 	<option value="11">安徽省</option>
					<option value="12">福建省</option>
					<option value="13">江西省</option>
					<option value="14">山东省</option>
					<option value="15">河南省</option>
					<option value="16">湖北省</option>
					<option value="17">湖南省</option>
					<option value="18">广东省</option>
					<option value="19">海南省</option>
					<option value="20">四川省</option>
					<option value="21">贵州省</option>
					<option value="22">云南省</option>
					<option value="23">陕西省</option>
					<option value="24">甘肃省</option>
					<option value="25">青海省</option>
					<option value="26">台湾省</option>
					<option value="27">内蒙古</option>
					<option value="28">广西</option>
					<option value="29">西藏</option>
					<option value="30">宁夏</option>
					<option value="31">新疆</option>
					<option value="32">香港</option>
					<option value="33">澳门</option>
				</select>
				<select name="shi">
				<option >${userb.shi }</option>
				</select></td>
				
			</tr>
				<tr>
				<td>机构全称</td>
				<td><input type="text" value="${userb.danwei }" name="danwei"><span id=""></span></td>
			</tr>
				<tr>
				<td>专业方向</td>
				<td><input type="text" value="${userb.zhuanye }" name="zhuanye"><span id=""></span></td>
			</tr>
				<tr>
				<td>所在行业</td>
				<td><input type="text" value="${userb.hangye }" name="hangye"><span id=""></span></td>
			</tr>
				<tr>
				<td>教育程度</td>
				<td><input type="text" value="${userb.jiaoyu }" name="jiaoyu"><span id=""></span></td>
			</tr>
			<tr>
				<td>昵称</td>
				<td><input type="text" value="${userb.nicheng }" name="nicheng"><span id=""></span></td>
			</tr>
			<tr>
				<td>通讯地址</td>
				<td><input type="text" value="${userb.tongxun }" name="tongxun"></td><td></td><td><span id="">请填写详细地址，以便与人联系</span></td>
			</tr>
			<tr>
				<td>邮政编码</td>
				<td><input type="text" value="${userb.bianma }" name="bianma"><span id=""></span></td>
			</tr>
				<tr>
				<td>手机</td>
				<td><input type="text" value="${userb.phone }" name="phone"><span id=""></span></td>
			</tr>
			
				<tr>
				<td>固定电话</td>
				<td><input type="text" value="${userb.guding }" name="guding"><span id=""></span></td>
			</tr>
				<tr>
				<td>邮箱</td>
				<td><input type="text" value="${userb.address }" name="address"><span id=""></span></td>
			</tr>
			<tr>
				<td>qq</td>
				<td><input type="text" value="${userb.qq }" name="qq"><span id=""></span></td>
			</tr>
			<tr>
				<td>msn</td>
				<td><input type="text" value="${userb.msn }" name="msn"><span id=""></span></td>
			</tr>
			<tr>
				<td><input type="submit" value="修改"><span id=""></span></td>
				<td><a href="gerenxinxicu.jsp" >返回</a><span id=""></span></td>
			</tr>
			
		</table>
	
	</form>
	</div>
</body>
</html>