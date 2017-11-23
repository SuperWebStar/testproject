<?php
class DB{
 private $host='localhost:3306';
 private $user='root';
 private $pass='';
 private $db='shortner';
 private $table='url_mapping';
 private $conn=null;
 function DB(){
	if($this->conn==null){
	 $this->conn=mysqli_connect($this->host,$this->user,$this->pass,$this->db);
	}
	//return $this->conn;
 }
 
 function insert_record($shorturl,$original_url)
 {
	// PLS ADD CODE TO CHECK SHORT URL DOES NOT EXIST IN TABLE TO AVOID DUPLICACY
	
	 $sql="insert into $this->table (`short_url`,`original_url`) values('".$shorturl."','".$original_url."')";
	$res=mysqli_query($this->conn,$sql);
	//return $res;
 }
 
 function get_record($shorturl){
	$sql="select * from $this->table where `short_url` = '".$shorturl."' limit 1";
	$res=mysqli_query($this->conn,$sql);
	if(mysqli_num_rows($res)){
		$row=mysqli_fetch_assoc($res);
		return $row['original_url'];
	}
	else{
		return false;
	}
 }
 
 
 
 
}

?>