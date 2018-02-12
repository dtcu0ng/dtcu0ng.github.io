function get_id(){
	var link=$("#icon_prefix").val();
	var preload='<div class="row" id="loading"><div class="preloader-wrapper big active"> <div class="spinner-layer spinner-blue"> <div class="circle-clipper left"> <div class="circle"></div></div><div class="gap-patch"> <div class="circle"></div></div><div class="circle-clipper right"> <div class="circle"></div></div></div><div class="spinner-layer spinner-red"> <div class="circle-clipper left"> <div class="circle"></div></div><div class="gap-patch"> <div class="circle"></div></div><div class="circle-clipper right"> <div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"> <div class="circle-clipper left"> <div class="circle"></div></div><div class="gap-patch"> <div class="circle"></div></div><div class="circle-clipper right"> <div class="circle"></div></div></div><div class="spinner-layer spinner-green"> <div class="circle-clipper left"> <div class="circle"></div></div><div class="gap-patch"> <div class="circle"></div></div><div class="circle-clipper right"> <div class="circle"></div></div></div></div></div>';
	
	if(link==""){
		Materialize.toast('Invaild URL !', 3000, 'rounded');
		$("#icon_prefix").focus();
		$("#icon_prefix").attr("placeholder","URL Should not be Empty ");
		
		}else{
		
			var data={
				id: $("#icon_prefix").val()
			
			}
			$("#status").html('');
				$("#preload").html('');
			$.ajax({
				type:"POST",
				url:"getid.php",
				data:data,
				dataType: 'json',
				cache:false,
			beforeSend:function(){
				$("#preload").html(preload);
			},
				success:function(response){
					 if(response.error == "1"){
				Materialize.toast('Error : Invaild value !!', 3000, 'rounded');
				$("#preload").html('');
					 }
					 else{
						 $("#status").html('<img src="https://graph.facebook.com/' + response.id + '/picture?type=large" width="128px" class="circle lock-screen-image z-depth-5" alt=""><h6 class="m-t-lg flow-text">' + response.name +'</h6><hr /><h3 class="green-text text-darken-2">'+ response.id +'</h3>');
					 $("#loading").html('');
					 }
				}
			});	
}}