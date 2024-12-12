<?php
include './includes/koneksi1.php';

$sql = "SELECT contentt FROM pagesdashboard WHERE title='products'";
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
table {
border: 2px solid black;
width: 100%;
}
th, td {
border: 1px solid black;
padding: 15px;
text-align: left;

}
td{
padding: 20px;
}
h1 , p{
margin: 5px;
}
body{
}

/* tambah produk start */
.btn{
	background: #A66E38;
	font-size: 20px;
	color: white;
	padding: 3px;
	border-radius: 2px;
	
}
.btn:hover{
	background: #FD8B51;
	color: whitesmoke;
}
.lanjut{
	width: 110px;
}
/* tambah produk end */
footer{
	margin-top: 1rem;
}
</style>
<?php
$koneksi1 = mysqli_connect("localhost","root","","cat");
?>

<table>
	<thead>
		<th>No</th>
		<th>Judul Produk</th>
		<th>Harga Produk</th>
		<th>Kategori Produk</th>
		<th>Deskripsi Produk</th>
		<th>Gambar Produk</th>
		<th>Aksi</th>
	</thead>
	<tbody>
		<?php $nomor=1 ;?>
		<?php $sql1 = $koneksi1 -> query ("SELECT * FROM list_content"); ?>
		<?php while ($data = $sql1 -> fetch_assoc()) { ?>
			<tr>
            <td><?php echo $nomor;?></td>
            <td><?php echo $data['judul_produk'];?></td>
            <td>Rp<?php echo number_format($data['harga']) ;?></td>
            <td><?php echo $data['title'];?></td>
            <td><?php echo $data['deskripsi'];?></td>
            <td>
				<!-- tidak menggunakan .jpeg dalam code dibawah karena dalam penguploade langsung .jpeg atau extesion gambar masuk  -->
			<img src="../landingpage/asets/img/menu-kucing/<?php echo $data['img'];?>" width="100px" alt="Gambar Produk">  
            </td>
			
            <td class="lanjut">
				<a href="index.php?page=hapusproduk&id_produk=<?php echo $data['id_produk'];?>"  class="btn-danger btn">Hapus</a>
                <a href="index.php?page=ubahproduk&id_produk=<?php echo $data['id_produk'];?>" class="btn btn-warning">ubah</a>
            </td>
        </tr>
        <?php $nomor++;?>
        <?php }?>
	</tbody>
</table>
<p>Jika mau nambah data bisa tekan dibawah ini </p>
<a href="./index.php?page=formtambah" class="btn">Tambah Produk</a>










