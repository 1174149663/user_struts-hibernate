<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		<a href="userList.html">用户列表</a> <a href=""
			style="background: #438eb9; color: #fff">用户新增</a> <a
			href="userAnalyze.html">信息分析</a> <img val="用户头像" src="images/aaa.jpg">
		<span style="margin-left: 10px;">当前登录用户</span>
	</div>
	<div class="right">
		${userModel.id }<br /> ${userModel.name }<br />
		<button onclick="javascript:history.go(-1)">返回</button>
	</div>
</body>
</html>