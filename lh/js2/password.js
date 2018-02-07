$('#login-button').click(function (event) {
	var userName=document.getElementById("userName").value;
    var pwd=document.getElementById("pwd").value;
    if(userName=="thuloveson" &&  pwd=="thuson"){
		event.preventDefault();
		$('form').fadeOut(500);
		$('.wrapper').addClass('form-success');
		setTimeout(function(){location.href="index_login_success.html";},2000);
	}
	else{
		alert("Vui lòng bấm OK để hệ thống phân tích dữ liệu! Nếu bấm OK nhưng không được chuyển hướng, vui lòng kiểm tra lại tên người dùng và mật khẩu.");
	}
});
