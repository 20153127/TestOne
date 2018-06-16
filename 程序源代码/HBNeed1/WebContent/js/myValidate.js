$().ready(function(){
	//自定义验证规则
	/*
	 * 参数依次为（验证方法名，验证规则函数，验证未通过的提示信息）
	 */
	
	//自定义邮箱格式验证
	$.validator.addMethod("email",function(value,element){
		var emailReg = /.*@.*\.?.*?\.(com|cn)$/;//email的正则表达式，任意字符@任意字符.非贪婪模式匹配字符  以.com|cn结尾
		return this.optional(element) || (emailReg.test(value))//optional用于验证该element是否为可选的，如果为可选的则直接返回true,否则用正则表达式测试该元素的value值，
	},"请正确填写您的邮箱");
	
	
	//自定义手机号格式验证
	$.validator.addMethod("number",function(value,element){
		var numberReg = /^[1][3458][0-9]{9}/;//手机号的正则表达式，^[1]以1开始，后为[34578]中的一个，再后接9个0-9之间的数
		return this.optional(element) || (numberReg.test(value))//optional用于验证该element是否为可选的，如果为可选的则直接返回true,否则用正则表达式测试该元素的value值，
	},"请正确填写您的手机号");
	
	
	//自定义用户名密码格式验证
	$.validator.addMethod("usernp",function(value,element){
		var usernameReg = /^[a-zA-Z0-9_][a-zA-Z0-9_]{3,9}$/;//用户名的正则表达式，^[a-zA-Z0-9_]代表以字母或数字或下划线开始，[a-zA-Z0-9_]{3,9}$代表后面为3-9个字母或数字或下划线，并以字母或数字或下划线结尾
		return this.optional(element) || (usernameReg.test(value))
	},"请正确填写您的用户名/密码");
	
	//为表单设置验证规则
	$("#checkFrom").validate({
		errorElement:'span',//验证错误将错误信息放在span标签
		errorClass:'help-block',//错误信息标签的class
		focusInvalid:false,//设置为通过的表单元素不获得焦点
		rules:{
			codeCheck:{
				required:true,//必填
				equalTo:"#checkCode"//需要与id为checkCode的元素的值相等
			},
			password2:{
				required:true,//必填
				equalTo:"#inputPassword"//需要与id为inputPassword的元素的值相等
			},
			username:{
				required:true,
				usernp:true//需要通过自定义的验证方法usernp
			},
			password:{
				required:true,
				usernp:true
			},
			inputPassword:{
				required:true,
				usernp:true
			},

			name:{
				required:true,
				rangelength:[2,15]//需要验证长度为2-15之间
			},
			parentId:{
				digits:true,//验证是否为整数
				min:0,//最小值为0
				maxlength:6//最大值为6
			},
			sort:{
				digits:true,//验证是否为整数
				min:0,
				required:true,
				rangelength:[1,15]
			},
			account:{
				required:true,
				number:true//利用自定义的验证方法number验证
			},
			desc:{
				required:true,
				rangelength:[5,100]
			},
			
		},
		//自定义验证未通过的提示语句
		messages:{
			codeCheck:{
				required : "验证码为空",
				equalTo :"验证码输入错误"
			},
			username:{
				required : "用户名为空",
				usernp:"用户名格式不正确，4-10位数字/字母/下划线"
			},
			password:{
				required : "密码为空",
				usernp:"密码格式不正确，4-10位数字/字母/下划线"
			},
			password2:{
				required : "确认密码为空",
				equalTo:"两次输入不一致"
			},
			name:{
				required: "请输入正确分类",
				rangelength: "分类名必须为2-15个字符"
			},
			parentId: {
				digits:"请输入大于0的数字或不填",
				min:"请输入大于0的数字或不填",
				maxlength: "所属分类必须为0-15个字符"
			},
			account: {
				required: "用户账号为空",
				number: "请输入正确手机号"
			},
			sort: {
				required: "请输入正确序号",
				digits:"请输入正确的数字",
				min:"请输入正确的数字",
				rangelength: "序号必须为1-15个字符"
			},
			desc: {
				required: "请输入正确简介",
				rangelength: "简介必须为5-100个字符"
			}			
		},
		//为未通过的元素添加css特效，即未通过的元素都会调用此方法
		higelight:function(element){
			$(element).closest('.form-group').addClass('has-error');//获得element的最近的class为form-group的祖先元素，并为祖先元素添加名为has-error的class
		},
		
		//验证通过的元素会调用此方法
		success:function(label){
			//获得label的最近的class为form-group的祖先元素，并为祖先元素删除名为has-error的class
			label.closest('.form-group').removeClass('has-error');
			//删除该元素
			label.remove();
		},
		//定义将错误标签放到哪里
		errorPlacement:function(error,element){
			element.parent('div').append(error);	//追加到错误标签的父元素
		}
		
	});
});
