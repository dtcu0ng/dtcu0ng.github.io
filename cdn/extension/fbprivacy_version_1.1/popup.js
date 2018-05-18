//Re-developed by CuongZ
//Version 1.1 :v
$(document).ready(function() {
	var postIDarray = '';
	var verifiedtoken =  '';
	var count = 0;
	var temp = 0;

	function changePrivacy(token, postIDarray){
		var privacy = $('#option option:selected').val();
		postIDarray = postIDarray.slice(0,-1);
		var ids = postIDarray.split(";");
		for(let i in ids){
			var url = 'https://graph.facebook.com/' + ids[i] + '?method=post&privacy[value]=' + privacy + '&access_token=' + token;
			$.post(url).done(function(){
				temp++;
				if(temp === count){
					$('#token').val('Đã xong!');
				}
			}).fail(function(){
				temp++;
				if(temp === count){
					$('#token').val('Đã xong!');
				}
			});
		}
	}

	function getfeed(token, feed, name){
		for(let i in feed.data){
			if(feed.data[i].id && feed.data[i].from.name === name){
				postIDarray += feed.data[i].id + ';';
				count++;
			}
		}
		if(feed.paging && feed){
			$.getJSON(feed.paging.next, function(feed){
				getfeed(token,feed,name);
			});
		}else{
			$('#token').val(' Đang thay đổi...');
			changePrivacy(token, postIDarray);
		}
	}

	function buildfeed(token, name){
		$.get('https://graph.facebook.com/me/feed?limit=275&fields=id,from',{access_token: token}).done(function(response){
			$('#token').val(' Đang phân tích các bài đăng...');
			$('#change').attr('disabled', 'disabled');
			getfeed(token, response, name);
		}).fail(function(){
			$('#token').val(' Không thể thay đổi với Token này! Vui lòng kiểm tra lại Token của bạn!');
		});
	}


	function verifytk(token){
		$.get('https://graph.facebook.com/me',{access_token: token}).done(function(e){
			if(e.verified === true){
				verifiedtoken = token;
				buildfeed(verifiedtoken, e.name);
			}
		}).fail(function(){
			 $('#token').val(' Token không hợp lệ! Vui lòng kiểm tra lại Token của bạn!');
		});
	}



	$('#change').click(function() {
		var token = $('#token').val();
		verifytk(token);
	});

});
