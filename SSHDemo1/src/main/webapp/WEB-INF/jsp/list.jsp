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
		<a href="#" style="background: #438eb9; color: #fff">用户列表</a> <a
			href="to_add">用户新增</a> <a href="userAnalyze">信息分析</a> <img val="用户头像"
			src="images/aaa.jpg"> <span style="margin-left: 10px;">当前登录用户</span>
	</div>
	<div class="right">
		<form name="registerForm" action="info" method="post">
			<div style="line-height: 30px; font-size: 20px; margin-top: 20px;"
				class="input-group">
				<i><span>用户名称：</span> </i> <input type="text"
					name="userModel.username" class="form-control"
					placeholder=" 请输入用户名！"><input type="submit"
					class="input-group-addon" value="查找"><br>
			</div>
		</form>
		<br>
		<table class="table table-hover">
			<thead>
				<tr style="background: #eee;">
					<th>编号</th>
					<th>姓名</th>
					<th>密码</th>
					<th>邮箱</th>
					<th>性别</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="temp" varStatus="vs">
					<tr>

						<td>${temp.id }</td>
						<td>${temp.username }</td>
						<td>${temp.password }</td>
						<td>${temp.email }</td>
						<td>${temp.gender }</td>
						<td><a href="delete?userModel.id=${temp.id }">删除</a> <a
							href="to_edit?userModel.id=${temp.id }">修改</a> <a
							href="info?userModel.username=${temp.username }">详情</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<div class="right-three">
			共有 ${Max} 条数据
			<button>
				<a href="pageUP">上一页</a>
			</button>
			当前第 ${PagingTag.pageNo}页
			<button>
				<a href="pageDown">下一页</a>
			</button>
		</div>
	</div>
</body>
</html>