<?php
include './includes/koneksi1.php';

$sql = "SELECT contentt FROM pagesdashboard WHERE title='dashboard'";
$result = $conn ->query($sql);

if($result -> num_rows > 0 ){
	$row = $result -> fetch_assoc();
	echo $row['contentt']; 
} 
else{
	echo " Content not founds";
}


?>
<style>
	.dashboardhead pre{
	font-size: 1.4rem;
	margin: 0.1rem;
}
	pre{
		font-size: 100px;
	}
	.o{
		padding: 1rem;
		margin-top: 1rem;
	}
	.o span{
		color: yellow;
		font-style: italic;
		
	}
</style>
<div class="dashboardhead">
	
<p>Selamat datang <?php print_r($_SESSION['nama']);?> </P>
</div>
<?//php var_dump($_SESSION['nama'])

?>

<p class="o">Silahkan bila mau masuk kedalam website pengguna <span><a href="../">di sini</span></p>