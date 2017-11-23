<?php  
if(!isset($_POST['url']) || empty($_POST['url'])){
	header('location: index.php');
	exit;
}

include_once('db.php');
$urlinput=addslashes($_POST['url']);  
$id=rand(100000,999999);  
$shorturl=base_convert($id,20,36);  
$db=new DB;
$db->insert_record($shorturl,$urlinput);
// Save the user url and $shorurl into database for future...

echo "Shortened url is http://localhost/shortner/". $shorturl ."";  
?>  
