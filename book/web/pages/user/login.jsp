<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>

	<%-- 静态包含 base标签、css样式、jQuery文件 --%>
	<%@ include file="/pages/common/head.jsp"%>
	<style type="text/css" >
					* {
						margin: auto;
						text-align: center;
					}
	        body {
	            height: 100%;
	            background-size: 100% 100%;
	        }
	        input{
	            width: 180px;
	        }
	        a{
	            color: black;
	            text-decoration: none;
	        }
	        .msg_cont{
	            color: white;
							width: 250px;
	            padding: 3px 10px 3px 40px;
	            background-color: black;
	            position: relative;
	            border: none;
	        }
				#rigest {
					width:150px;
					font-weight: bold;
				}
				label {
					font-weight: bold;
				}
				#rigest div {

				}
				#rigest input {
					font-weight: bold;
					background-color: black;
					color: white;
					width: 50px;
				}

	    </style>
</head>
<body>
		<div id="login_header">
			<img class="logo_img" alt="" src="static/img/logo.jpg" >
		</div>

				<h1>欢迎登录</h1>
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<br/>
							<div class="msg_cont">
								<b></b>
								<span class="errorMsg">
									${ empty requestScope.msg ? "请输入用户名和密码":requestScope.msg }
								</span>
							</div>
							<br/>
							<div class="form">
								<form action="userServlet" method="post">
									<input type="hidden" name="action" value="login" />
									<label>用户名:</label>
									<input class="itxt" type="text" placeholder="请输入用户名"
										   autocomplete="off" tabindex="1" name="username"
										   value="${requestScope.username}" />
									<br />
									<br />
									<label>密 &nbsp;&nbsp;&nbsp;码:</label>
									<input class="itxt" type="password" placeholder="请输入密码"
										   autocomplete="off" tabindex="1" name="password" />
									<br />
									<br />
									<br/>
									<div id="rigest">
										<input type="submit" value="登录" id="sub_btn" />
										<br/>
										<br/>
										<a href="pages/user/regist.jsp" style="color: red">注册</a>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
			<br/>
			<br/>
			<br/>

<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>


</body>
</html>