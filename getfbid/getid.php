<?php
/* header('Content-Type: text/html; charset=utf-8'); */
header('Content-type: application/json');

if(isset($_POST['id']) && ! empty($_POST['id'])){
$url=$_POST['id'];
include("include/token.php");

if(strpos($url, 'com/groups') == false){
	$tachurl =str_replace(array('https://www.facebook.com/','profile.php?id=','https://m.facebook.com/',' ','https://www.facebook.com/groups/','/'), '', $url); 

$idlink = end((explode('/', $tachurl)));


$graph_link1="https://graph.facebook.com/".$idlink."?fields=name,id&access_token=".$token_a;

$graph_content1=file_get_contents($graph_link1);
$graph1=json_decode($graph_content1);

$name=$graph1->name;
$id=$graph1->id;
if($id){
$graph_link2="https://graph.facebook.com/v1.0/".$id."?access_token=".$token_a;

$graph_content2=file_get_contents($graph_link2);
$graph2=json_decode($graph_content2);

$name2=$graph2->name;
$id2=$graph2->id;
$link=$graph2->link;
	$data=array(
"error" => "0",
"id" => $id2,
"name" => $name2,
);
echo json_encode($data);
}

}

else if(strpos($url, 'com/groups/') == true){
$tachurlg =str_replace(array('https://www.facebook.com/groups/','profile.php?id=','https://m.facebook.com/',' ','https://www.facebook.com/groups/','/'), '', $url); 
$tachurlg= substr($tachurlg, 0, strpos($tachurlg, '?'));
  $graph_linkg="https://graph.facebook.com/search?q=".strtoupper($tachurlg)."&type=group&access_token=".$token_a."&limit=4";

$graph_contentg=file_get_contents($graph_linkg);
$graphg=json_decode($graph_contentg);

$idg=$graphg->data[0]->id;
$nameg=$graphg->data[0]->name;
$gtype=$graphg->data[0]->privacy;
if($idg){	
$data=array(
"error" => "0",
"id" => $idg,
"name" => $nameg,
);
echo json_encode($data);

}

	
}
 

}
?>