<?php
include "./landingpage/includes/import.php";

$sql = "SELECT content FROM pages WHERE title='kering'";
$result = $conn ->query($sql);

if($result -> num_rows > 0 ){
	$row = $result -> fetch_assoc();
	echo $row['content']; 
} 
else{
	echo " Content not founds";
}


?>
