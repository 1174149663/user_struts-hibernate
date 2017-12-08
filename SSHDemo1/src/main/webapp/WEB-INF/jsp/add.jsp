<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<title>用户新增</title>
</head>
<body scroll="no" style="overflow-x: hidden; overflow-y: hidden">
	<div class="head">
		<div>
			<img src="images/logo.png">
		</div>
		<div class="headname">
			用户管理系统 <a href="">退出</a> <a href="">帮助</a>
		</div>
	</div>
	<div class="left">
		<a href="findallusers">用户列表</a> <a href="#"
			style="background: #438eb9; color: #fff">用户新增</a> <a
			href="userAnalyze">信息分析</a> <img val="用户头像" src="images/aaa.jpg">
		<span style="margin-left: 10px;">当前登录用户</span>
	</div>
	<div class="right">
		<div style="line-height: 80px; font-size: 20px;">
			<i>新增用户信息</i>
		</div>
		<hr>

		<form class="table" action="add" method="post">
			<div class="box1 form-group">
				<div class="input-group">
					<span class="input-group-addon"> 用户名称：</span> <input type="text"
						class="form-control" name="userModel.username" id="username"
						required="true" placeholder=" 请输入用户名！">
				</div>
				<div class="input-group">
					<span class="input-group-addon"> 登录密码：</span> <input
						type="password" class="form-control" name="userModel.password"
						id="password" required="true" placeholder=" 请输入密码！">
				</div>
				<div class="input-group">
					<span class="input-group-addon"> 电子邮箱：</span> <input type="email"
						class="form-control" name="userModel.email" id="email"
						required="true" placeholder=" 请输入邮箱！">
				</div>
			</div>

			<div class="box2">
				性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： <input type="radio"
					name="userModel.gender" id="male" value="男" checked="checked"
					required> <label for="male">男</label> <input type="radio"
					name="userModel.gender" id="female" value="女" required> <label
					for="female">女</label>

			</div>
			<hr>
			<br>
			<div class="box3">
				<input type="submit" onclick="myFunction()" value="添加" />
				<button type="reset" value="reset">重置</button>
				<button onclick="javascript:history.go(-1)">返回</button>
			</div>
		</form>
	</div>
</body>
</html>