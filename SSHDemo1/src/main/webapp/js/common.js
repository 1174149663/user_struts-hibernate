function resizeWindow() {   // 浏览器窗口高度 - header高度 = 内容区高度    
    var contentHeight = $(window).height() - 80;  
    $(".left").height(contentHeight);  
    $(".right").height(contentHeight);
}

function myFunction(){
	var name = document.getElementById("username").value;
	var password1 = document.getElementById("password").value;
	var email = document.getElementById("email").value;
	if(name.length < 5 || name.length >20){
		alert("用户名必须在5到20个字符以内！");
		return false;
	}else if(password1.length < 6 || password1.length>20){
		alert("密码必须在6到20个字符以内！");
		return false;
	}else if(email === ""){
		alert("email地址不正确！");
	}
}

