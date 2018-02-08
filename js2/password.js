$('#login-button').click(function (event) {
	var userName=document.getElementById("userName").value;
    var pwd=document.getElementById("pwd").value;
    if(userName=="CuongZ" &&  pwd=="cuongz.me"){
		event.preventDefault();
		$('form').fadeOut(500);
		$('.wrapper').addClass('form-success');
		setTimeout(function(){location.href="index.html";},2000);
	}
	else{
		alert("Sai mật khẩu! Vui lòng kiểm tra phần tử trang này để có mặt khẩu.");
	}
});
