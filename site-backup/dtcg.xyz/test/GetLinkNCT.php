<?php
/**
 * Code by Nguyen Huu Dat - https://www.facebook.com/dl2811
 * Code được chia sẻ miễn phí tại J2TEAM Community - https://www.facebook.com/groups/j2team.community
 * Website: https://trolyfacebook.com
 * Remake by CuongZ (dtcu0ng) - https://github.com/CuongZ
 */

error_reporting(0);

function GetToken()
{
	$headers = array();
	$headers[] = 'Content-Type: application/x-www-form-urlencoded';
	$headers[] = 'Host: graph.nhaccuatui.com';
	$headers[] = 'Connection: Keep-Alive';
	
	
	$c = curl_init();
	curl_setopt($c, CURLOPT_URL, "https://graph.nhaccuatui.com/v1/commons/token");
	curl_setopt($c, CURLOPT_SSL_VERIFYPEER,false);
	curl_setopt($c, CURLOPT_SSL_VERIFYHOST,false);
	curl_setopt($c, CURLOPT_FOLLOWLOCATION, true);
	curl_setopt($c, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($c, CURLOPT_HTTPHEADER, $headers);
	curl_setopt($c, CURLOPT_POST, 1);
	curl_setopt($c, CURLOPT_POSTFIELDS, "deviceinfo=%7B%22DeviceID%22%3A%22dd03852ada21ec149103d02f76eb0a04%22%2C%22DeviceName%22%3A%22dtcgGetLinkNCT%22%2C%22OsName%22%3A%22IOS%22%2C%22OsVersion%22%3A%228.0%22%2C%22AppName%22%3A%22NCTMobile%22%2C%22TokenID1Z%22%3A%221.3.0%22%2C%22UserName%22%3A%220%22%2C%22QualityPlay%22%3A%22128%22%2C%22QualityDownload%22%3A%22128%22%2C%22QualityCloud%22%3A%22128%22%2C%22Network%22%3A%22WIFI%22%2C%22Provider%22%3A%22NCTCorp%22%7D&md5=ebd547335f855f3e4f7136f92ccc6955&timestamp=1499177482892");


	$page = curl_exec($c);
	curl_close($c);
	
	$infotoken = json_decode($page);
	$token = $infotoken->data->accessToken;
	return $token;
}


function GetLink($songid,$token)
{
	//echo $songid;
	$linklist = 'https://graph.nhaccuatui.com/v1/songs/'.$songid.'?access_token='.$token;
	$c = curl_init();
	curl_setopt($c, CURLOPT_URL, $linklist);
	curl_setopt($c, CURLOPT_SSL_VERIFYPEER,false);
	curl_setopt($c, CURLOPT_SSL_VERIFYHOST,false);
	curl_setopt($c, CURLOPT_FOLLOWLOCATION, true);
	curl_setopt($c, CURLOPT_RETURNTRANSFER, true);

	$page = curl_exec($c);
	curl_close($c);
	
	$data = json_decode($page);
	return $data;
}

?>
<html lang="vi"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Get Link NCT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no">
    <meta name="description" content="Get link NCT">
    <meta name="msapplication-tap-highlight" content="no">
    <link rel="stylesheet" type="text/css" href="audioplayerengine/initaudioplayer-1.css">
<link href="./main.css" rel="stylesheet"><style type="text/css"></style></head>
<body>
    <div class="app-container app-theme-white body-tabs-line fixed-sidebar">
        <div class="app-header header-shadow bg-vicious-stance header-text-light">
            <div class="app-header__logo">
                <div class="logo-src"></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    <div class="app-header__content">
                <div class="app-header-left">
                    <div class="search-wrapper">
                        <div class="input-holder">
                            <input type="text" class="search-input" placeholder="Type to search">
                            <button class="search-icon"><span></span></button>
                        </div>
                        <button class="close"></button>
                    </div>
                    <ul class="header-menu nav">
                        <li class="nav-item">
                            
                        </li>
                        <li class="btn-group nav-item">
                            
                        </li>
                        <li class="dropdown nav-item">
                            
                        </li>
                    </ul>        </div>
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group show">
                                        
                                        
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">Guest</div>
                                    <div class="widget-subheading">Welcome to our website!</div>
                                </div>
                                <div class="widget-content-right header-user-info ml-3">
                                    
                                </div>
                            </div>
                        </div>
                    </div>        </div>
            </div>
        </div>                <div class="app-main">
                <div class="app-sidebar sidebar-shadow bg-vicious-stance sidebar-text-light">
                    <div class="app-header__logo">
                        
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    <div class="scrollbar-sidebar ps">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu metismenu">
                                <li class="app-sidebar__heading">Homepage</li>
                                <li>
                                    <a href="index.html">
                                        <i class="metismenu-icon pe-7s-rocket"></i>Homepage</a>
                                </li>
                                <li>
                                    <a href="charts-chartjs.html" class="mm-active">
                                        <i class="metismenu-icon pe-7s-graph2">
                                        </i>Get link NCT ( VIP )
                                    </a>
                                </li>
                                
                                
                            </ul>
                        </div>
                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
                </div>    <div class="app-main__outer">
                    <div class="app-main__inner">
                            <div class="alert alert-warning">
                                <strong>Lưu ý</strong>!</strong> Nếu bạn tải nhạc xuất hiện của sổ ghi 404 Not found thì vui lòng chọn chất lượng thấp hơn để tải nhạc (do trên server NCT không có file nhạc chất lượng mà bạn đã chọn!)
                                </div>
                              
                              <div class="panel panel-primary" style="margin-top: 20px;">
                                <div class="panel-heading">Get Link NhacCuaTui.Com</div>
                                <br>
                                <div class="panel-body">
                                  <form class="form-horizontal" action="" method="POST">
                                      <fieldset>
                                      <div class="form-group">
                                        <div class="col-md-10">
                                        <input id="url" name="url" placeholder="Nhập link Bài hát của NhacCuaTui" class="form-control input-md" value="" type="text">
                                        </div>
                                        <div class="col-md-2">
                                            <br>				   
                                            <button id="Submit" name="submit" value="submit" class="btn btn-primary" style="text-align: center;">Get link</button>
                                        </div>
                                      </div>
                                      </fieldset>
                                      </form>
                                      <div class="row">
                                        <div class="col-md-12" style="text-align: center;">
                                            <?php 
                                            if(isset($_POST['url']))
                                            {
                                                $url = $_POST['url'];
                                                $temp = explode(".",$url);
                                                $songid = trim($temp[3]);
                                                if($songid != "")
                                                {
                                                    $token = GetToken();
                                                    if($token != "")
                                                    {
                                                        $data = GetLink($songid,$token);
                        
                                                        $onlinelink = $data->data->{7};
                                                        $dl128 = $data->data->{11};
                                                        $dl320 = $data->data->{12};
                                                        $dlless = $data->data->{19};
                                                        $thumbnail = $data->data->{8};
                                                        $songname = $data->data->{2};
                                                        $singer = $data->data->{3};
                                                        if($songname != "")
                                                        {
                                                            $tenfile = "$songname - $singer";
                                                            $msg.= '<div style="margin:12px auto;">
                                                                <div id="amazingaudioplayer-1" style="display:block;position:relative;width:300px;height:300px;margin:0px auto 0px;">
                                                                    <ul class="amazingaudioplayer-audios" style="display:none;">
                                                                        <li data-artist="" data-title="'.$songname.' - '.$singer.'" data-album="" data-info="" data-image="'.$thumbnail.'" data-duration="0">
                                                                            <div class="amazingaudioplayer-source" data-src="'.$onlinelink.'" data-type="audio/mpeg" />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>';
                        
                                                            $msg.= ' <a target="_banks" href="'.$dl128.'"><button type="button" class="btn btn-success"><i class="pe-7s-cloud-download"></i> 128 Kbps</button></a> ';
                        
                                                            $msg.= ' <a target="_banks" href="'.$dl320.'"><button type="button" class="btn btn-success"><i class="pe-7s-cloud-download"></i> 320 Kbps</button></a> ';
                        
                                                            $msg.= ' <a target="_banks" href="'.$dlless.'"><button type="button" class="btn btn-success"><i class="pe-7s-cloud-download"></i> Lossless</button></a> ';
                        
                                                            echo $msg;
                                                        }
                                                        else
                                                        {
                                                            echo "Lỗi: Không thể get bài này! Đảm bảo link phải chuẩn nhé. Link phải có dạng: https://www.nhaccuatui.com/bai-hat/hongkong-12-nguyen-trong-tai-ft-mc-12.dM7OTqcZfFgc.html";
                                                        }
                                                    }
                                                    else
                                                    {
                                                        echo "Lỗi: Tạo token!";
                                                    }
                                                }
                                                else
                                                {
                                                    echo "Lỗi: Không tìm thấy ID bài hát! Link phải có dạng: https://www.nhaccuatui.com/bai-hat/hongkong-12-nguyen-trong-tai-ft-mc-12.dM7OTqcZfFgc.html";
                                                }
                                                
                                            }
                        
                                            ?>
                                  
                    </div>
                    <div class="app-wrapper-footer">
                        <div class="app-footer">
                            <div class="app-footer__inner">
                                <div class="app-footer-left">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">Made with ♥ by dtcu0ng</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>    </div>
                
        </div>
    </div>
<script type="text/javascript" src="./assets/scripts/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="audioplayerengine/amazingaudioplayer.js"></script>
<script src="audioplayerengine/initaudioplayer-1.js"></script>

</body></html>