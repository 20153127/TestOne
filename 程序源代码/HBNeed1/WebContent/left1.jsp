<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
	
		d = new dTree('d');
		d.add('01',-1,'系统菜单');
		if(${pp.xqtianbao}==1){
		d.add('0101','01','需求填报','${pageContext.request.contextPath}/need.jsp','','mainAction');
		}
		if(${pp.xqgl}==1){
		d.add('0102','01','需求管理','${pageContext.request.contextPath}/needservlet?method=find','','mainAction');
		}
		if(${pp.shenhe}==1){
		d.add('0103','01','需求审核','${pageContext.request.contextPath}/needservlet?method=findno','','mainAction');
		}
		if(${pp.typefind}==1){
		d.add('0104','01','分类浏览');
		d.add('010401','0104','基础研究','${pageContext.request.contextPath}/needservlet?method=typefind&value=基础研究','','mainAction');
		d.add('0040101','010401','数学类','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=数学类&value=基础研究','','mainAction')
		d.add('004010101','0040101','理论数学','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=数学类&xuekexiao=理论数学&value=基础研究','','mainAction')
		d.add('004010102','0040101','应用数学','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=数学类&xuekexiao=应用数学&value=基础研究','','mainAction')
		
		
		d.add('0040102','010401','英语类','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=英语类&value=基础研究','','mainAction')
		d.add('004010201','0040102','标准英语','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=英语类&xuekexiao=标准英语&value=基础研究','','mainAction')
		d.add('004010202','0040102','专业英语','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=英语类&xuekexiao=专业英语&value=基础研究','','mainAction')
		
		
		d.add('0040103','010401','化学类','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=化学类&value=基础研究','','mainAction')
		d.add('004010301','0040103','无机化学','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=化学类&xuekexiao=无机化学&value=基础研究','','mainAction')
		d.add('004010302','0040103','有机化学','${pageContext.request.contextPath}/needservlet?method=typefind&xuekeda=化学类&xuekexiao=有机化学&value=基础研究','','mainAction')
		
		d.add('010402','0104','应用研究','${pageContext.request.contextPath}/needservlet?method=typefind&value=应用研究','','mainAction');
		d.add('010403','0104','试验发展','${pageContext.request.contextPath}/needservlet?method=typefind&value=试验发展','','mainAction');
		d.add('010404','0104','研究发展与成果应用','${pageContext.request.contextPath}/needservlet?method=typefind&value=研究发展与成果应用','','mainAction');
		d.add('010405','0104','技术推广与科技服务','${pageContext.request.contextPath}/needservlet?method=typefind&value=技术推广与科技服务','','mainAction');
		d.add('010406','0104','生产性活动','${pageContext.request.contextPath}/needservlet?method=typefind&value=生产性活动','','mainAction');
		
		d.add('01040601','010406','农林牧渔业','${pageContext.request.contextPath}/needservlet?method=typefind&daye=农林牧渔业&value=生产性活动','','mainAction');
		d.add('0104060101','01040601','农业','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=农业&value=生产性活动&daye=农林牧渔业','','mainAction');
		d.add('0104060102','01040601','林业','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=林业&value=生产性活动&daye=农林牧渔业','','mainAction');
		d.add('0104060103','01040601','渔业','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=渔业&value=生产性活动&daye=农林牧渔业','','mainAction');
		d.add('0104060104','01040601','畜牧业','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=畜牧业&value=生产性活动&daye=农林牧渔业','','mainAction');
		
		d.add('01040602','010406','采矿业','${pageContext.request.contextPath}/needservlet?method=typefind&daye=采矿业&value=生产性活动','','mainAction');
		d.add('0104060201','01040602','煤矿','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=煤矿&daye=采矿业&value=生产性活动','','mainAction');
		d.add('0104060202','01040602','石油','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=石油&daye=采矿业&value=生产性活动','','mainAction');
		d.add('0104060203','01040602','有色金属','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=有色金属&daye=采矿业&value=生产性活动','','mainAction');
		d.add('0104060204','01040602','非金属','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=非金属&daye=采矿业&value=生产性活动','','mainAction');
		
		d.add('01040603','010406','制造业','${pageContext.request.contextPath}/needservlet?method=typefind&daye=制造业&value=生产性活动','','mainAction');
		d.add('0104060301','01040603','食品','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=食品&daye=制造业&value=生产性活动','','mainAction');
		d.add('0104060302','01040603','纺织','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=纺织&daye=制造业&value=生产性活动','','mainAction');
		
		d.add('01040604','010406','建筑业','${pageContext.request.contextPath}/needservlet?method=typefind&daye=建筑业&value=其他类型研究','','mainAction');
		d.add('0104060401','01040604','房屋建筑','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=房屋建筑&daye=建筑业&value=生产性活动','','mainAction');
		d.add('0104060402','01040604','建筑装修','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=建筑装修&daye=建筑业&value=生产性活动','','mainAction');
		
		d.add('01040605','010406','批发零售业','${pageContext.request.contextPath}/needservlet?method=typefind&daye=批发零售业&value=生产性活动','','mainAction');
		d.add('0104060501','010406'+'05','批发业','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=批发业&daye=批发零售业&value=生产性活动','','mainAction');
		d.add('0104060502','010406'+'05','零售业','${pageContext.request.contextPath}/needservlet?method=typefind&xiaoye=零售业&daye=批发零售业&value=生产性活动','','mainAction');
		}
		if(${pp.jsqx}==1)
		{
		d.add('0105','01','角色权限管理');
		d.add('010501','0105','用户管理','${pageContext.request.contextPath}/userservlet?method=yhgl','','mainAction');
		d.add('010502','0105','权限管理','${pageContext.request.contextPath}/powerservlet?method=qxgl','','mainAction');
		d.add('010503','0105','角色管理','${pageContext.request.contextPath}/userservlet?method=jsgl','','mainAction');
		}
		if(${pp.xinxigl}){
		d.add('0106','01','个人信息管理','${pageContext.request.contextPath}/gerenxinxicu.jsp','','mainAction');
		}
		if(${pp.mimaxg}){
		d.add('0107','01','密码修改','${pageContext.request.contextPath}/changemima.jsp','','mainAction');
		}
		if(${pp.tjbb}){
		d.add('0108','01','统计报表','${pageContext.request.contextPath}/pict.jsp','','mainAction');
		}
		d.add('0109','01','安全退出','${pageContext.request.contextPath}/nlogin.jsp','','mainAction');
		document.write(d);
		
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
