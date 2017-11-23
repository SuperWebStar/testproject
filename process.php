<?php
if(!isset($_GET["shorturl"])  || empty($_GET["shorturl"])){
	header('location: index.php');
	exit;
}

include_once('db.php');  
$url= addslashes($_GET["shorturl"]);  
$db=new DB();
$original_url=$db->get_record($url);
if($original_url==false){
	echo 'Record not found...';
}
else{
	header('location: '.$original_url);
}
// select original url from table where  shortened_url=$url
 
?>  