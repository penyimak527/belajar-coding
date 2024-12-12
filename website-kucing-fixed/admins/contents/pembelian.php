<?php
include './includes/koneksi1.php';


$sql = "SELECT contentt FROM pagesdashboard WHERE title='pembelian'";
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
	th{
		padding: 5px;
	}
	td{
		padding: 10px;
		text-align: center;
	}
	table{
		margin: 1rem;
	}
</style>
<?php
$conn1 = new mysqli("localhost","root","","cat");
//AS nama_user

$sql1 = "SELECT pembelian_produk.id_pembelian, user.nama , user.id_user , list_content.judul_produk, 
               list_content.harga, pembelian_produk.telepon , pembelian_produk.jumlah, pembelian_produk.alamat , pembelian_produk.total_harga , pembelian_produk.tanggal_pembelian 
        FROM pembelian_produk 
        JOIN user ON pembelian_produk.id_user = user.id_user
        JOIN list_content ON pembelian_produk.id_produk = list_content.id_produk  ORDER BY pembelian_produk.tanggal_pembelian DESC"; 
        // bisa pakai ASEC

$result1 = $conn1->query($sql1);
$no = 1;
if ($result1->num_rows > 0) {
	//ID Pembelian
    echo "<table border='1'>
            <thead>
                <tr>

                    <th>No</th>
                    <th>Id User</th>
                    <th>Nama User</th>
                    <th>Nama Produk</th>
                    <th>Harga</th>
                    <th>Telepon</th>
                    <th>Jumlah</th>
                    <th>Total Harga</th>
                    <th>Alamat</th>
                    <th>Tanggal Pembelian</th>
                </tr>
            </thead>
            <tbody>";

    while ($row1 = $result1->fetch_assoc()) {
        echo "<tr>
                <td>$no</td>
                <td>{$row1['id_user']}</td> 
                <td>{$row1['nama']}</td>
                <td>{$row1['judul_produk']}</td>
                <td>Rp".number_format($row1['harga'])."</td>
                <td>{$row1['telepon']}</td>
                <td>{$row1['jumlah']}</td>
                <td>Rp ". number_format($row1['total_harga'])." </td>
                <td>{$row1['alamat']}</td>
                <td>{$row1['tanggal_pembelian'] }</td>
              </tr>";
              //tidak digunakan masih butuh
$no++;
    }

    echo "</tbody></table>";
} else {
    echo "Tidak ada data pembelian.";
}

$conn->close();
?>

<style>
    tr th{
        font-size: 19px;
        padding: 0.5rem;
    }
</style>