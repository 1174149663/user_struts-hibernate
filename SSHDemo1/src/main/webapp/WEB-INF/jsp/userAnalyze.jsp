<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body scroll="no" style="overflow-x: hidden; overflow-y: hidden">
	<div class="head">
		<div>
			<img src="images/logo.png">
		</div>
		<div class="headname">
			用户管理系统 <a href="#">退出</a> <a href="#">帮助</a>
		</div>
	</div>
	<div class="left">
		<a href="findallusers" >用户列表</a> <a
			href="to_add">用户新增</a> <a href="#" style="background: #438eb9; color: #fff">信息分析</a> <img val="用户头像"
			src="images/aaa.jpg"> <span style="margin-left: 10px;">当前登录用户</span>
	</div>
	<div class="right"></div>
</body>
</html>