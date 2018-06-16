<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
body {
	margin: 0;
	padding: 0;
}
</style>
<html>
<body>
	<div style="height: 40px; background-color:#1E90FF" align="right">
		<font style="color: #FFFFFF; font-size: 20px; line-height: 34px;" >您好：${userb.name 

}&nbsp;&nbsp;&nbsp;</font>
		<font id="time" style="color: #FFFFFF; font-size: 20px; line-height: 34px;"></font>
	</div>
    <script>
        document.getElementById('time').innerHTML = new Date().toLocaleString()
                + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
        setInterval(
                "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
                1000);
    </script>
</body>
</html>