$('#login-button').click(function (event) {
	var userName=document.getElementById("userName").value;
    var pwd=document.getElementById("pwd").value;
    if(userName=="CuongZ" &&  pwd=="angaysv"){
		event.preventDefault();
		$('form').fadeOut(500);
		$('.wrapper').addClass('form-success');
		setTimeout(function(){location.href="index_login_success.html";},2000);
	}
	else{
		alert("Sai mật khẩu !! Trong một vài trường hợp mật khẩu là :"angaysv" nha");
	}
});
