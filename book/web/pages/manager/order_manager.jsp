<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单</title>

	<%@ include file="/pages/common/head.jsp"%>
	<style type="text/css" >
		* {
			text-align: center;
		}
		#header_left {
			height: 150px;
			width: 800px;
		}
		#header_right table {
			font-size: 20px;
			font-weight: bold;
			height: 150px;
		}
		.wel_word{
			margin-top: 35px;;
			font-size: 60px;
			float: left;
		}
		.logo_img{
			width: 200px;
			height: 150px;
			float: left;
		}
		a {

			color: black;
			text-decoration: none;
		}
		#main {
			margin: 0px auto;
			height: 460px;
			width: 1200px;
			overflow: auto;
		}

		#main div a {
			font-weight: bold;
			padding: 15px;
			color: black;
			margin-top: 150px;
			text-decoration: none;
			font-size: 20px;
			text-align: center;
		}
		#header div span {
			margin: 10px;
		}
		.wel_word{
			margin-top: 35px;;
			font-size: 60px;
			float: left;
		}
		#main div{
			margin: 0px auto;
			text-align: center;
			margin-top: 200px;
		}
	</style>


</head>
<body>

<div id="header_left">
	<img class="logo_img" alt="" src="static/img/logo.jpg" >
	<div class="wel_word">订单管理</div>

</div>
<br/>
</div>
	
<%--	<div id="main">--%>
<%--		<table>--%>
<%--			<tr>--%>
<%--				<td>日期</td>--%>
<%--				<td>金额</td>--%>
<%--				<td>详情</td>--%>
<%--				<td>发货</td>--%>
<%--			</tr>		--%>
<%--			<tr>--%>
<%--				<td>2015.04.23</td>--%>
<%--				<td>90.00</td>--%>
<%--				<td><a href="#">查看详情</a></td>--%>
<%--				<td><a href="#">点击发货</a></td>--%>
<%--			</tr>	--%>
<%--			--%>
<%--			<tr>--%>
<%--				<td>2015.04.20</td>--%>
<%--				<td>20.00</td>--%>
<%--				<td><a href="#">查看详情</a></td>--%>
<%--				<td>已发货</td>--%>
<%--			</tr>	--%>
<%--			--%>
<%--			<tr>--%>
<%--				<td>2014.01.23</td>--%>
<%--				<td>190.00</td>--%>
<%--				<td><a href="#">查看详情</a></td>--%>
<%--				<td>等待收货</td>--%>
<%--			</tr>		--%>
<%--		</table>--%>
<%--	</div>--%>
<div id="main">
	<div>
		<%@include file="/pages/common/manager_menu.jsp"%>
	</div>

</div>
<div>
	<%@include file="/pages/common/footer.jsp"%>
</div>


</body>
</html>