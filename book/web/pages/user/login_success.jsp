<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录成功</title>

	<%@ include file="/pages/common/head.jsp"%>
	<style type="text/css">
		#main div{
			margin: 0px auto;
			text-align: center;
		}
		#header {
			height: 150px;
			width: 1000px;
		}

		#main {
			margin: 0px auto;
			height: 300px;
			width: 1200px;
			overflow: auto;
		}
		#content  a{
			font-weight: bold;
			color: black;
			text-decoration: none;
			font-size: 20px;
			text-align: center;
		}
		table {
			height: 130px;
			width: 200px;
			text-align: center;
		}
	h1 {
		text-align: center;
		margin-top: 200px;
	}

	.wel_word{
		margin-top: 35px;;
		font-size: 45px;
		float: left;
	}
	a {
		text-decoration: none;
		font-weight: bold;
		color: black;
	}
	.logo_img {
		width: 200px;
		height: 140px;
		float: left;
	}
		.um_span{
			font-weight: bold;
		}
		button {
			width: 150px;
			height: 50px;
			font-size: 25px;
			font-weight: bold;
			background-color: white;
			color: black;
		}
</style>
</head>
<body>
		<div id="header">
			<div id="login_header">
				<img class="logo_img" alt="" src="static/img/logo.jpg" >
			</div>
			<div class="wel_word">
			<span>欢迎<span class="um_span" >${sessionScope.user.username}</span>光临BIGJAVA网上书城</span>
			</div>
		</div>
		<br/>
		<div id="content">
			<table>
				<tr>
					<td>
						<a href="pages/order/order.jsp">
							<svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_listSquare" viewBox="0 0 2000 2000"><path d="M1623 322H177q-70 0-118 48-49 49-49 119v1223q0 70 49 119 48 48 118 48h1446q70 0 118-48 49-49 49-119V489q0-70-49-119-48-48-118-48zm-21 1390H198q-7 0-14-7t-7-13V510q0-7 7-14t14-7h1404q7 0 14 7t7 14v1182q0 6-7 13t-14 7zM553 778q0 41-29 69-28 29-69 29t-69-29q-29-28-29-69 0-40 29-69 28-28 69-28t69 28q29 29 29 69zm0 310q0 41-29 69-28 29-69 29t-69-29q-29-28-29-69t29-69q28-28 69-28t69 28q29 28 29 69zm0 335q0 40-29 69-28 28-69 28t-69-28q-29-29-29-69 0-41 29-69 28-29 69-29t69 29q29 28 29 69zm693-698v84q0 17-12 29t-30 12H719q-17 0-29-12-13-12-13-29v-84q0-17 13-29 12-13 29-13h485q18 0 30 13 12 12 12 29zm210 334v83q0 18-12 30t-30 12H719q-17 0-29-12-13-12-13-30v-83q0-18 13-30 12-12 29-12h695q18 0 30 12t12 30zm0 334v83q0 17-12 30-12 12-30 12H719q-17 0-29-12-13-13-13-30v-83q0-18 13-30 12-12 29-12h695q18 0 30 12t12 30z"/></svg>
							我的订单
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="userServlet?action=logout">
							<svg  width="22px" height="22px" xmlns="http://www.w3.org/2000/svg" name="zi_usertimes" viewBox="0 0 2000 2000"><path d="M1616 946l166-169q18-15 18-40.5t-18-40.5l-85-85q-15-18-40.5-18t-40.5 18l-169 166-170-166q-14-18-40-18t-41 18l-84 85q-19 15-19 40.5t19 40.5l165 169-165 170q-19 14-19 40t19 40l84 85q15 19 41 19t40-19l170-165 169 165q15 19 40.5 19t40.5-19l85-85q18-14 18-40t-18-40l-166-170zm-993 153q97 0 179-47.5t129-129Q978 841 978 744t-47-179q-47-82-129-129t-179-47q-97 0-179 47T315 565q-47 82-47 179t47 178.5q47 81.5 129 129t179 47.5zm250 89h-47q-97 44-202.5 44T421 1188h-47q-100 0-186 49.5T52 1373q-50 86-50 186v117q0 55 39 94t94 39h977q55 0 94-39t39-94v-117q0-100-50-186t-136-135.5q-86-49.5-186-49.5z"/></svg>
							注销
						</a>&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						<a href="index.jsp"><svg  width="18px" height="18px" xmlns="http://www.w3.org/2000/svg" name="zi_undoalt" viewBox="0 0 2000 2000"><path d="M901 200q-178 0-337.5 65.5T280 450L150 320q-26-26-62-26t-61.5 25.5Q1 345 1 381v486q0 37 25.5 62T88 954h486q36 0 61.5-25t25.5-61.5q0-36.5-25-61.5L483 653q84-76 191-119.5T897 490q163 0 304.5 81.5t225 223Q1510 936 1510 1101t-81.5 305q-81.5 140-221.5 221.5T901 1709q-113 0-216.5-38T498 1557q-11-11-29-9.5t-29 12.5l-145 145q-11 11-11 31t14 31q120 109 276 170.5t327 61.5q243 0 449.5-121.5t328-328q121.5-206.5 121.5-450t-121.5-450q-121.5-206.5-328-328T901 200z"/></svg>
							返回
						</a>
					</td>
				</tr>
			</table>
		</div>

		<div id="main">
			<h1><a href="../../book/index.jsp"><button>跳转主页</button></a></h1>
		</div>
		<%@include file="/pages/common/footer.jsp"%>


</body>
</html>