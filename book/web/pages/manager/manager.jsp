<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台</title>
	<%@ include file="/pages/common/head.jsp"%>
	<style type="text/css">

		div{
			margin-bottom: 10px;
			margin-top: 10px;

		}
		.logo_img {
			width: 200px;
			height: 140px;
			float: left;
		}
	#main div{
		margin: 0px auto;
		text-align: center;
		margin-top: 200px;
	}
	#header {
		height: 200px;
		width: 800px;
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
</style>
</head>
<body>

	<div id="header">
		<div id="login_header">
			<img class="logo_img" alt="" src="static/img/logo.jpg" >
		</div>
			<div class="wel_word">后台管理</div>
	</div>
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