<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>用户更新</title>
</head>
<body>

	<br />
	<form action="do_edit" method="post" class="table table-striped">
		<h4>修改用户</h4>
		<input name="userModel.id" type="hidden" value="${userModel.id }" />
		<table>
			<tr>
				<td>姓名</td>
				<td><input name="userModel.username" type="text"
					value="${userModel.username }" class="form-control" /></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input name="userModel.password" type="password"
					value="${userModel.password }" /></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="radio" name="userModel.gender" value="男"
					checked="checked" required><label for="male">男</label>     <input
					type="radio" name="userModel.gender" value="女" required> <label
					for="female">女</label></td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td><input name="userModel.email" type="email"
					value="${userModel.email }" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button onclick="javascript:history.go(-1)">返回</button> <input
					type="submit" onclick="myFunction()" value="保存" />
				</td>
			</tr>
		</table>
	</form>


</body>
</html>