<?php
include "./landingpage/includes/import.php";



ini_set('display_errors', 1);			//agar tau salahnya dimana
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


$sql = "SELECT content FROM pages WHERE title='menu'";
$result = $conn ->query($sql);

if($result -> num_rows > 0 ){
	$row = $result -> fetch_assoc();
	echo $row['content']; 
} 
else{
	echo " Content not founds";
}


?>
<style>
	 .row-produk1 , .row-basah , .row-mainan{
        display: flex;
        flex-wrap: wrap; /* Membuat item melipat ke baris berikutnya jika ruang tidak cukup */
        gap: 3.5%; /* Jarak antar produk */
		margin: 5px;
    }
	.col-md-1 .thumnail{
		display : flex;
		justify-content: flex-start;
	}
	.caption .btn-primary{
		font-size: 20px;
		color: white;
		background-color: #FD8B51;
		border-radius: 1px;
		text-decoration: none;
		background-size: 100px;
	}
	.btn-primary{
		font-size: 20px;
		color: white;
		background-color: #FD8B51;
		border-radius: 1px;
		text-decoration: none;
		background-size: 100px;
		padding: 5px 10px;
		border-radius: 2px; 
		cursor: pointer;
	}
</style>
<?php
$koneksi  = new mysqli("localhost", "root", "", "cat");?>
<div id="makanan-kering" class="kering">
	<div class="row-kering">
		<h3>Produk</h3>
		<div class="row-produk1">
			<?php 
			$ambil = $koneksi -> query("SELECT * FROM list_content WHERE title = 'makanan-kering'");?>
			<?php 
			while($perproduk = $ambil -> fetch_assoc()){
			?>
	<div class="col-md-1">
		<div class="thumnail">
			<img src="landingpage/asets/img/menu-kucing/<?php echo $perproduk['img'];?>" width="200px" alt="<?php echo $perproduk["deskripsi"];?>" >
			<div class="caption">
              <h3><?php echo $perproduk['judul_produk'];?></h3>
              <h5>Rp<?php echo number_format( $perproduk['harga']);?></h5>
              	<a href="index.php?page=beli&id_produk=<?php echo$perproduk['id_produk'];?>" class="btn-primary">Beli</a>
                <a href="index.php?page=detail&id_produk=<?php echo$perproduk['id_produk'];?>" class="btn-primary">Detail</a>

                        </div>
		</div>
	</div>

<?php }?>

		</div>
	</div>
</div>
<div id="makanan-basah" class="basah">
	<section><center><h2>Makanan Kucing tipe basah</h2></center></section>
	<h3>Produk</h3>
<div class="row-basah">
<?php
$ambil1 = $koneksi ->query("SELECT * FROM list_content WHERE title ='makanan-basah'");

//perulangan
while($perproduk1 = $ambil1 -> fetch_assoc()){
?>
<div class="col-md-1">
	<div class="thumnail">
	<img src="landingpage/asets/img/menu-kucing/<?php echo $perproduk1['img'];?>" width="200px" alt="<?php echo $perproduk1["deskripsi"];?>" >
	<div class="caption">
	<h3>
		<?php echo $perproduk1['judul_produk'];?></h3>
        <h5>Rp<?php echo number_format( $perproduk1['harga']);?></h5>
                            <a href="index.php?page=beli&id_produk=<?php echo$perproduk1['id_produk'];?>" class="btn-primary">Beli</a>
        			<a href="index.php?page=detail&id_produk=<?php echo$perproduk1['id_produk'];?>" class="btn-primary">Detail</a>

	</div>
	</div>
</div>


<?php  }?>
</div>
</div>
<div id="mainan" class="mainan">
	<section><center><h2>Mainan Kucing</h2></center></section>
	<h3>Produk</h3>
<div class="row-mainan">
<?php
$ambil2 = $koneksi ->query("SELECT * FROM list_content WHERE title ='mainan'");

//perulangan
while($perproduk2 = $ambil2 -> fetch_assoc()){
?>
<div class="col-md-1">
	<div class="thumnail">
	<img src="landingpage/asets/img/menu-kucing/<?php echo $perproduk2['img'];?>" width="200px" alt="<?php echo $perproduk2["deskripsi"];?>" >
	
	<div class="caption">
	<h3>
		<?php echo $perproduk2['judul_produk'];?></h3>
        <h5>Rp<?php echo number_format( $perproduk2['harga']);?></h5>
                            <a href="index.php?page=beli&id_produk=<?php echo$perproduk2['id_produk'];?>" class="btn-primary">Beli</a>
        			<a href="index.php?page=detail&id_produk=<?php echo$perproduk2['id_produk'];?>" class="btn-primary">Detail</a>

	</div>
	</div>
</div>


<?php  }?>
</div>
</div>
