<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
</head>
<frameset frameborder="no" rows="82px, *">
    <frame src="head.jsp" scrolling="no" >
	<frameset  cols="230px, *">
		<frame src="left1.jsp">
		<frameset rows="24px,*">
		<frame src="title.jsp" scrolling="no">
		<frame  name="mainAction">
		
		</frameset>
		
	</frameset>
</frameset>
</html>