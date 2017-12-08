<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>名字查询</title>
</head>
<body>
	<h1>INFORMATION</h1>
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
						href="to_edit?userModel.id=${temp.id }">修改</a>
						<button onclick="javascript:history.go(-1)">返回</button>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>