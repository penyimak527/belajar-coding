
<?php
header('Cache-Control: no-cache, must-revalidate');
header('Pragma: no-cache');



ob_start();
// your form processing code here
ob_end_flush();


include "./landingpage/includes/import.php";

$sql = "SELECT content FROM pages WHERE title='Contact'";
$result = $conn ->query($sql);

if($result -> num_rows > 0 ){
	$row = $result -> fetch_assoc();
	echo $row['content']; 
} 
else{
	echo " Content not founds";	
}

if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$nama = $_POST['nama'];
	$email = $_POST['email'];
	$pesan = $_POST['pesan'];

	$sql1 = "INSERT INTO kontak (nama, email, pesan) value (?, ?, ?)";				//menggunakan prepared sql

	$stmt = $conn->prepare($sql1);
	$stmt->bind_param("sss",$nama,$email, $pesan);
	$stmt ->execute();

	echo "<script>location='index.php?page=home'</script>";
}
?>
<div class="coba">
<div class="coba1">
<link rel="stylesheet" href="/asets/style.css">
<section>
	<div class="form">
		<form method="post">
			<div class="nama">
				<label>nama</label>
				<input type="text" id="nama" name="nama" placeholder required>
			</div>
			<div class="email">
				<label>Email</label>
				<input type="email" id="email" name="email" placeholder required>
			</div>
			<div class="pesan">
				<label>Pesan atau saran</label>
				<input type="text" id="pesan" name="pesan" placeholder required>
			</div>
			<input type="submit" id="submit" value="submit">
		</form>
	</div>
</section>
</div>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3949.764090723588!2d113.21545247426245!3d-8.12548438132956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd667897656a9c1%3A0xa6cd2590433df9d4!2sSMK%20Negeri%201%20Lumajang!5e0!3m2!1sid!2sid!4v1732692437096!5m2!1sid!2sid" style="border:0;" height="350" loading="lazy" ></iframe>
	</div>
	<style>
		.coba{
			display: flex;
			/* justify-content: space-between; */
		}
		iframe{
			border-radius: 5px;
			padding: 0.5rem;
			width: 100% ;
			
		}
/*		responsive start*/
@media (min-width : 768px) {

}

/* Untuk layar lebih kecil dari 768px */
@media (max-width: 767px) {
	.coba{
		flex-direction: column;
		width: 85%;
	}
}

/*		responsive end*/
	</style>