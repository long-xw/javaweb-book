<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书</title>

	<%@ include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function () {
			$("a.deleteClass").click(function () {
				/**
				 * 返回true表示点击了，确认，返回false表示点击取消。
				 */
				return confirm("你确定要删除【" + $(this).parent().parent().find("td:first").text() + "】?");
			});
		});
	</script>
	<style type="text/css" >
		* {
			text-align: center;
		}
		#header_left {
			height: 150px;
			width: 800px;
		}
		#header_right {
			padding: 30px;
			float: left;
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
		#main {
			margin: 0px auto;
			height: 350px;
			width: 1100px;
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
		.logo_img{
			width: 200px;
			height: 150px;
			float: left;
		}
		#main table{
			margin: auto;
			margin-top: 80px;
			border-collapse: collapse;
		}

		#main table td{
			width: 120px;
			text-align:center;
			border-bottom: 1px #e3e3e3 solid;
			padding: 10px;
		}
		a {
			color: black;
			text-decoration: none;
		}
	</style>

</head>
<body>
	
	<div id="header_left">
		<img class="logo_img" alt="" src="static/img/logo.jpg" >
		<div class="wel_word">书籍管理</div>

	</div>
	<br/>
	<div id="header_right">
		<table>
			<tr>
				<td>
					<a href="manager/bookServlet?action=page">
						<svg  width="20px" height="30px" xmlns="http://www.w3.org/2000/svg" name="zi_book" viewBox="0 0 2000 2000"><path d="M1686 1464V284q0-35-24.5-59.5T1602 200H451q-140 0-238.5 98.5T114 537v1123q0 140 98.5 238.5T451 1997h1151q35 0 59.5-24.5t24.5-59.5v-56q0-39-31-67-11-39-11-130t11-130q31-24 31-66zM560 741q0-8 7-15t14-7h744q7 0 14 7t7 15v70q0 7-7 14t-14 7H581q-7 0-14-7t-7-14v-70zm0 224q0-7 7-14t14-7h744q7 0 14 7t7 14v70q0 7-7 14t-14 7H581q-7 0-14-7t-7-14v-70zm891 878H451q-46 0-79-33.5t-33-79q0-45.5 33-79t79-33.5h1000q-3 46-3 112.5t3 112.5z"/></svg>
						图书管理
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="/book/pages/manager/order_manager.jsp">
						<svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_listSquare" viewBox="0 0 2000 2000"><path d="M1623 322H177q-70 0-118 48-49 49-49 119v1223q0 70 49 119 48 48 118 48h1446q70 0 118-48 49-49 49-119V489q0-70-49-119-48-48-118-48zm-21 1390H198q-7 0-14-7t-7-13V510q0-7 7-14t14-7h1404q7 0 14 7t7 14v1182q0 6-7 13t-14 7zM553 778q0 41-29 69-28 29-69 29t-69-29q-29-28-29-69 0-40 29-69 28-28 69-28t69 28q29 29 29 69zm0 310q0 41-29 69-28 29-69 29t-69-29q-29-28-29-69t29-69q28-28 69-28t69 28q29 28 29 69zm0 335q0 40-29 69-28 28-69 28t-69-28q-29-29-29-69 0-41 29-69 28-29 69-29t69 29q29 28 29 69zm693-698v84q0 17-12 29t-30 12H719q-17 0-29-12-13-12-13-29v-84q0-17 13-29 12-13 29-13h485q18 0 30 13 12 12 12 29zm210 334v83q0 18-12 30t-30 12H719q-17 0-29-12-13-12-13-30v-83q0-18 13-30 12-12 29-12h695q18 0 30 12t12 30zm0 334v83q0 17-12 30-12 12-30 12H719q-17 0-29-12-13-13-13-30v-83q0-18 13-30 12-12 29-12h695q18 0 30 12t12 30z"/></svg>
						订单管理
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="index.jsp"><svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_undoalt" viewBox="0 0 2000 2000"><path d="M901 200q-178 0-337.5 65.5T280 450L150 320q-26-26-62-26t-61.5 25.5Q1 345 1 381v486q0 37 25.5 62T88 954h486q36 0 61.5-25t25.5-61.5q0-36.5-25-61.5L483 653q84-76 191-119.5T897 490q163 0 304.5 81.5t225 223Q1510 936 1510 1101t-81.5 305q-81.5 140-221.5 221.5T901 1709q-113 0-216.5-38T498 1557q-11-11-29-9.5t-29 12.5l-145 145q-11 11-11 31t14 31q120 109 276 170.5t327 61.5q243 0 449.5-121.5t328-328q121.5-206.5 121.5-450t-121.5-450q-121.5-206.5-328-328T901 200z"/></svg>
					返回商城
					</a>
				</td>
			</tr>
		</table>
	</div>
	<div id="main">
		<table>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>作者</td>
				<td>销量</td>
				<td>库存</td>
				<td colspan="2">操作</td>
			</tr>
			<c:forEach items="${requestScope.page.items}" var="book">
				<tr>
					<td>${book.name}</td>
					<td>${book.price}</td>
					<td>${book.author}</td>
					<td>${book.sales}</td>
					<td>${book.stock}</td>
					<td><a href="manager/bookServlet?action=getBook&id=${book.id}&pageNo=${requestScope.page.pageNo}" style="border-bottom: 2px dotted #000000;">修改</a></td>
					<td><a class="deleteClass" href="manager/bookServlet?action=delete&id=${book.id}&pageNo=${requestScope.page.pageNo}" style="border-bottom: 2px dotted #000000;">删除</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="pages/manager/book_edit.jsp?pageNo=${requestScope.page.pageTotal}" style="border-bottom: 2px dotted #000000;">添加图书</a></td>
			</tr>	
		</table>
	</div>
	<br/>
	<strong><%@include file="/pages/common/page_nav.jsp"%></strong>
	<br/>
	<br/>
	<br/>
	<%@include file="/pages/common/footer.jsp"%>
</body>
</html>