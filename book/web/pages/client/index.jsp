<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>

	<%@ include file="/pages/common/head.jsp"%>
	<Script type="text/javascript">
		$(function () {
			// 给加入购物车按钮绑定单击事件
			$("button.addToCart").click(function () {
				/**
				 * 在事件响应的function函数 中，有一个this对象，这个this对象，是当前正在响应事件的dom对象
				 * @type {jQuery}
				 */
				var bookId = $(this).attr("bookId");
				location.href = "http://localhost:8080/book/cartServlet?action=addItem&id=" + bookId;

			});
		});
	</Script>
	<style type="text/css" >
		div{
			margin: auto;
			margin-bottom: 10px;
			margin-top: 10px;

		}
		#context {
			margin: auto;
			width: 1400px;
			text-align: center;
		}
		#left{
			width:160px ;
			float: left;
			text-align: center ;
		}
		#left_2 {
			width: 150px ;
			float: left;
		}
		#right{
			width: 1100px;
			height:630px;
			float: left;
		}
		#right_1 {
			height: 70px;
		}
		#right_2 {
			height: 460px;
		}
		#right_2_1 {
			text-align: right;
			height: 35px;
		}
		.tab_1 {
			text-align: left;
		}
		li {
			height: 30px;
			font-weight: bold;
			font-size: 20px;
			padding: 5px;
			text-align: center;
		}
		ul {
			list-style:none;
			padding-left:0px;
		}
		strong {
			color:black;
		}
		a{
			color: black;
			font-weight: bold;
			text-decoration: none;
		}
		.b_list{
			height:400px;
			width:250px;
			margin: 54px;
			float: left;
			margin-top:0px;
			margin-bottom:0px;
		}
    .book_cond input{
    	width: 50px;
    	text-align: center;
    }
		.book_img {
			height:150px;
			width:110px;
			border: red;
		}
		#right_3 {
			height: 40px;
		}
	</style>
</head>
<body>
<div id="right_2_1">
	<c:if  test="${not empty sessionScope.user}">
		<h3>欢迎<span style="color: black; border-bottom: 1px solid black;">${sessionScope.user.username}</span>光临BIGJAVA网上书城</h3>
	</c:if>
</div>
<div id="context">
	<div id="left">
		<table class="tab_1">
			<tr>
				<td>
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2000 2200" width="150" height="150"><path fill="#000000" d="M2014 576q27 0 45.5 19t19.5 47v1199q0 27-19 46t-46 19H65q-27 0-46-19t-19-46V642q0-27 19-46.5T65 576h159v-45l55-22q5-3 50.5-19T448 454q73-20 160-35.5T781 403q161 0 257 66 95-66 256-66 86 0 173.5 15.5t160 35.5q72.5 20 118.5 36t51 19l55 22v45h162zm-249 14l-73-25q-73-25-180-49.5T1294 490q-61 0-116.5 12.5T1081 545v958q100-53 233-50t256.5 33q123.5 30 194.5 55V590zm-98 1010q-95-29-206-48t-209.5-11q-98.5 8-156.5 59h572zM781 489q-81 0-164 15.5t-152 35q-69 19.5-112 35L310 590v951q71-26 194.5-55.5t256.5-33q133-3.5 233 50.5V545q-41-30-96-43t-117-13zm199 1111q-58-51-156.5-59T614 1552q-111 19-206 48h572zm969 175V707h-97v980H223V707h-93v1068h1819z"></path></svg>
				</td>
			</tr>
			<tr>
				<td><h1>网上书城</h1></td>
			</tr>
		</table >
		<div id="left_2">
			<ul>
			<c:if test="${empty sessionScope.user}">
				<li><a href="pages/user/login.jsp"><svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_usertie" viewBox="0 0 2000 2000"><path d="M900 1099q123 0 226.5-60T1290 875.5q60-103.5 60-226.5t-60-226.5Q1230 319 1126.5 259t-227-60q-123.5 0-227 60t-163 163.5Q450 526 450 649t59.5 226.5Q569 979 672.5 1039t227.5 60zm337 116l-169 671-112-478 112-197H731l112 197-112 478-169-671q-123 4-226.5 69T172 1454.5Q112 1560 112 1683v147q0 71 49 120t120 49h1237q71 0 120-49t49-120v-147q0-123-60-228.5T1463.5 1284q-103.5-65-226.5-69z"/></svg>登录</a></li>
				<li><a href="pages/user/regist.jsp"><svg  width="22px" height="22px" xmlns="http://www.w3.org/2000/svg" name="zi_userplus" viewBox="0 0 2000 2000"><path d="M587 961H406V781q0-20-12.5-32.5T361 736h-90q-20 0-32.5 12.5T226 781v180H45q-20 0-32.5 13T0 1007v90q0 20 12.5 32.5T45 1142h181v181q0 19 12.5 32t32.5 13h90q20 0 32.5-13t12.5-32v-181h181q20 0 32.5-12.5T632 1097v-90q0-20-12.5-33T587 961zm581 139q99 0 182-48t131-131.5q48-83.5 48-182t-48-182Q1433 473 1350 425t-182-48q-99 0-182 48T855 556.5q-48 83.5-48 182t48 182q48 83.5 131 131.5t182 48zm254 90h-48q-99 45-206 45t-206-45h-48q-101 0-188.5 51T587 1379.5q-51 87.5-51 188.5v119q0 56 39.5 95.5T671 1822h994q56 0 95.5-39.5t39.5-95.5v-119q0-101-51-188.5T1611 1241q-87-51-189-51z"/></svg>注册</a></li>
			</c:if>
			<c:if test="${not empty sessionScope.user}">
				<li>
					<a href="pages/order/order.jsp">
						<svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_listSquare" viewBox="0 0 2000 2000"><path d="M1623 322H177q-70 0-118 48-49 49-49 119v1223q0 70 49 119 48 48 118 48h1446q70 0 118-48 49-49 49-119V489q0-70-49-119-48-48-118-48zm-21 1390H198q-7 0-14-7t-7-13V510q0-7 7-14t14-7h1404q7 0 14 7t7 14v1182q0 6-7 13t-14 7zM553 778q0 41-29 69-28 29-69 29t-69-29q-29-28-29-69 0-40 29-69 28-28 69-28t69 28q29 29 29 69zm0 310q0 41-29 69-28 29-69 29t-69-29q-29-28-29-69t29-69q28-28 69-28t69 28q29 28 29 69zm0 335q0 40-29 69-28 28-69 28t-69-28q-29-29-29-69 0-41 29-69 28-29 69-29t69 29q29 28 29 69zm693-698v84q0 17-12 29t-30 12H719q-17 0-29-12-13-12-13-29v-84q0-17 13-29 12-13 29-13h485q18 0 30 13 12 12 12 29zm210 334v83q0 18-12 30t-30 12H719q-17 0-29-12-13-12-13-30v-83q0-18 13-30 12-12 29-12h695q18 0 30 12t12 30zm0 334v83q0 17-12 30-12 12-30 12H719q-17 0-29-12-13-13-13-30v-83q0-18 13-30 12-12 29-12h695q18 0 30 12t12 30z"/></svg>
							我的订单
					</a>
				</li>
				<li>
					<a href="userServlet?action=logout">
						<svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_usertimes" viewBox="0 0 2000 2000"><path d="M1616 946l166-169q18-15 18-40.5t-18-40.5l-85-85q-15-18-40.5-18t-40.5 18l-169 166-170-166q-14-18-40-18t-41 18l-84 85q-19 15-19 40.5t19 40.5l165 169-165 170q-19 14-19 40t19 40l84 85q15 19 41 19t40-19l170-165 169 165q15 19 40.5 19t40.5-19l85-85q18-14 18-40t-18-40l-166-170zm-993 153q97 0 179-47.5t129-129Q978 841 978 744t-47-179q-47-82-129-129t-179-47q-97 0-179 47T315 565q-47 82-47 179t47 178.5q47 81.5 129 129t179 47.5zm250 89h-47q-97 44-202.5 44T421 1188h-47q-100 0-186 49.5T52 1373q-50 86-50 186v117q0 55 39 94t94 39h977q55 0 94-39t39-94v-117q0-100-50-186t-136-135.5q-86-49.5-186-49.5z"/></svg>
						注销
					</a>
				</li>
			</c:if>

				<li><a href="pages/cart/cart.jsp"><svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_shoppingcart" viewBox="0 0 2000 2000"><path d="M1648 1241l143-650q9-34-13-62.5t-59-28.5H494l-28-140q-6-25-26.5-42.5T394 300H75q-31 0-53 22T0 375v50q0 31 22 53t53 22h216l219 1073q-41 25-64.5 65.5T422 1726q0 72 51.5 123.5T597 1901q72 0 123.5-51.5t51.5-125q0-73.5-53-123.5h657q-53 50-53 123.5t51.5 125Q1426 1901 1498 1901t123.5-51.5Q1673 1798 1673 1726q0-50-26.5-92.5T1573 1570l19-79q6-34-16-62t-56-28H679l-19-100h916q25 0 45.5-16t26.5-44zM605 1799q-33 0-56-23.5t-23-56.5q0-33 23-56t56-23q33 0 56.5 23t23.5 56q0 33-23.5 56.5T605 1799zm901 0q-33 0-56.5-23.5T1426 1719q0-33 23.5-56t56.5-23q33 0 56 23t23 56q0 33-23 56.5t-56 23.5z"/></svg>
					购物车</a></li>
				<li><a href="pages/manager/manager.jsp">后台管理</a></li>
			</ul>
		</div>
	</div>
	<div id="right">
		<div id="right_1">
			<div id="book">
				<div style="text-align: center">
					<c:if test="${empty sessionScope.cart.items}">
						<%--购物车为空--%>
						<span> </span>
						<div>
							<span style="color: black; font-weight: bold">
								当前购物车为空</span>
						</div>
					</c:if>
					<c:if test="${not empty sessionScope.cart.items}">
						<%--购物车不为空--%>
						<span>您的<svg  width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" name="zi_cartarrowPlus" viewBox="0 0 2000 2000"><path d="M1575 1314H660l18 100h841q34 0 56 28t16 63l-19 78q-16 22 11 64t27 92q0 72-52 123.5t-123.5 51.5q-71.5 0-121.5-50t-53.5-123.5Q1256 1667 1313 1614H719q53 50 53 125t-54.5 126.5Q663 1917 588 1914q-66-3-114.5-51.5T422 1748q-3-50 22-93.5t66-68.5L291 483H75q-31 0-53-22T0 408v-50q0-31 22-53t53-22h319q25 0 45.5 17t26.5 42l28 172h1225q38 0 59.5 28t12.5 63l-144 650q-6 28-26.5 43.5T1575 1314zm-303-475h-150V714q0-22-14-36t-36-14h-50q-22 0-36 14t-14 36v125H822q-22 0-36 14t-14 36v50q0 22 14 36t36 14h150v125q0 22 14 36t36 14h50q22 0 36-14t14-36V989h150q22 0 36-14t14-36v-50q0-22-14-36t-36-14zm244 647q0-8-14-13.5t-36-5.5H766q-22 0-36 5.5t-14 13.5v47q0 8 14 13.5t36 5.5h700q22 0 36-5.5t14-13.5v-47z"/></svg>中有 <span style="color: red ; border-bottom: 5px double  red;">${sessionScope.cart.totalCount}</span> 件商品</span>
						<div>
							您刚刚将 《<span style="border-bottom: 1px solid  black">${sessionScope.lastName}</span>》加入<svg  width="1rem" height="1rem" xmlns="http://www.w3.org/2000/svg" name="zi_cartarrowPlus" viewBox="0 0 2000 2000"><path d="M1575 1314H660l18 100h841q34 0 56 28t16 63l-19 78q-16 22 11 64t27 92q0 72-52 123.5t-123.5 51.5q-71.5 0-121.5-50t-53.5-123.5Q1256 1667 1313 1614H719q53 50 53 125t-54.5 126.5Q663 1917 588 1914q-66-3-114.5-51.5T422 1748q-3-50 22-93.5t66-68.5L291 483H75q-31 0-53-22T0 408v-50q0-31 22-53t53-22h319q25 0 45.5 17t26.5 42l28 172h1225q38 0 59.5 28t12.5 63l-144 650q-6 28-26.5 43.5T1575 1314zm-303-475h-150V714q0-22-14-36t-36-14h-50q-22 0-36 14t-14 36v125H822q-22 0-36 14t-14 36v50q0 22 14 36t36 14h150v125q0 22 14 36t36 14h50q22 0 36-14t14-36V989h150q22 0 36-14t14-36v-50q0-22-14-36t-36-14zm244 647q0-8-14-13.5t-36-5.5H766q-22 0-36 5.5t-14 13.5v47q0 8 14 13.5t36 5.5h700q22 0 36-5.5t14-13.5v-47z"/></svg>中
						</div>
					</c:if>
				</div>
			</div>


			<div id="right_2">
          <br/>
          <br/>

			<c:forEach items="${requestScope.page.items}" var="book">
				<div class="b_list">
					<div class="img_div">
						<img class="book_img" alt="" src="${book.imgPath}" />
					</div>
					<div class="book_info">
						<div class="book_name">
							<span class="sp1">书名:</span>
							<span class="sp2">${book.name}</span>
						</div>
						<div class="book_author">
							<span class="sp1">作者:</span>
							<span class="sp2">${book.author}</span>
						</div>
						<div class="book_price">
							<span class="sp1">价格:</span>
							<span class="sp2">￥${book.price}</span>
						</div>
						<div class="book_sales">
							<span class="sp1">销量:</span>
							<span class="sp2">${book.sales}</span>
						</div>
						<div class="book_amount">
							<span class="sp1">库存:</span>
							<span class="sp2">${book.stock}</span>
						</div>
						<div class="book_add">
							<button bookId="${book.id}" class="addToCart"><svg  width="25px" height="25px" xmlns="http://www.w3.org/2000/svg" name="zi_cartarrowPlus" viewBox="0 0 2000 2000"><path d="M1575 1314H660l18 100h841q34 0 56 28t16 63l-19 78q-16 22 11 64t27 92q0 72-52 123.5t-123.5 51.5q-71.5 0-121.5-50t-53.5-123.5Q1256 1667 1313 1614H719q53 50 53 125t-54.5 126.5Q663 1917 588 1914q-66-3-114.5-51.5T422 1748q-3-50 22-93.5t66-68.5L291 483H75q-31 0-53-22T0 408v-50q0-31 22-53t53-22h319q25 0 45.5 17t26.5 42l28 172h1225q38 0 59.5 28t12.5 63l-144 650q-6 28-26.5 43.5T1575 1314zm-303-475h-150V714q0-22-14-36t-36-14h-50q-22 0-36 14t-14 36v125H822q-22 0-36 14t-14 36v50q0 22 14 36t36 14h150v125q0 22 14 36t36 14h50q22 0 36-14t14-36V989h150q22 0 36-14t14-36v-50q0-22-14-36t-36-14zm244 647q0-8-14-13.5t-36-5.5H766q-22 0-36 5.5t-14 13.5v47q0 8 14 13.5t36 5.5h700q22 0 36-5.5t14-13.5v-47z"/></svg></button>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
			<div id="right_3">
<%--				<div class="book_cond">--%>
<%--					<form action="client/bookServlet" method="get">--%>
<%--						<input type="hidden" name="action" value="pageByPrice">--%>
<%--						<strong>图书价格：</strong><input id="min" type="text" name="min" value="${param.min}"> 元 ---%>
<%--						<input id="max" type="text" name="max" value="${param.max}"> 元--%>
<%--						<input type="submit" value="查询" style="font-weight:bold ;color: black"/>--%>
<%--					</form>--%>
<%--				</div>--%>
				<%@include file="/pages/common/page_nav.jsp"%>
			</div>
		</div>
	</div>

</div>
	<%@include file="/pages/common/footer.jsp"%>

</body>
</html>