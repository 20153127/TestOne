<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/echarts.js"></script>
</head>
<script
	src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/bootstrap-3.3.5-dist/js/bootstrap.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/js/jquery.validate.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/js/myValidate.js"type="text/javascript">
	</script>
	
<body>
    <div id="main1" style="width: 600px;height:400px;" ></div>
   
    <script type="text/javascript">
   		
        var myChart = echarts.init(document.getElementById('main1'));
		
        var option1 = {
		    tooltip: {
		        trigger: 'item',
		        formatter: "{a} <br/>{b}: {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        x: 'left',
		        data:['独立开发','委托研发','合作研发','其他']
		    },
		    series: [
		        {
		            name:'访问来源',
		            type:'pie',
		            radius: ['50%', '70%'],
		            avoidLabelOverlap: false,
		            label: {
		                normal: {
		                    show: false,
		                    position: 'center'
		                },
		                emphasis: {
		                    show: true,
		                    textStyle: {
		                        fontSize: '30',
		                        fontWeight: 'bold'
		                    }
		                }
		            },
		            labelLine: {
		                normal: {
		                    show: false
		                }
		            },
		            data:[
		                
		            ]
		        }
		    ]
		};
        $(function(){
			$.post(
					"${pageContext.request.contextPath}/needservlet",
					{
						method : "display",
					},
					function(data) {
						if (data != null && data.length > 0) {
							var num = data.split(",");
							option1.series[0].data.push({value:num[0], name:"独立开发"});
							option1.series[0].data.push({value:num[1], name:"委托研发"});
							option1.series[0].data.push({value:num[2], name:"合作研发"});
							option1.series[0].data.push({value:num[3], name:"其他"});
							myChart.setOption(option1);
						}
					}, "json");
		})
    </script>
    
</body>
</html>