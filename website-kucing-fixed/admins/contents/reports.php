<?php
include './includes/koneksi1.php';

$sql = "SELECT contentt FROM pagesdashboard WHERE title='reports'";
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

</style>

<?php
// Query untuk mengambil data dari tabel
$sql1 = "SELECT id_kontak, nama , email, pesan , tanggal FROM kontak";
$result = $conn->query($sql1);
$no= 1;
// Mengecek apakah ada data yang diambil
if ($result->num_rows > 0) {
    // Menampilkan data dalam bentuk tabel
    echo "<table border='1'>
    <thead>
            <tr>
                <th>No</th>
                
                <th>Nama</th>
                <th>Email</th>
                <th>Pesan</th>
                <th>Tanggal</th>
                <th>Aksi</th>
            </tr>
    </thead>
    <tbody>";
    
    // Menampilkan setiap baris data
    while($row1 = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $no . "</td>
                
                <td>" . $row1["nama"] . "</td>
                <td>" . $row1["email"] . "</td>
                <td>" . $row1["pesan"] . "</td>
                <td>" . $row1["tanggal"] . "</td>
                <td>" . "<a href='index.php?page=hapusreports&id_kontak=". $row1['id_kontak'] ."' class='btn-hapus'>Hapus</a>" . "</td>
              </tr>";
              $no++;
    }
       echo "</tbody></table>";
} else {
    echo "Data tidak ada";
}

// Menutup koneksi
$conn->close();
?>
<style>
    .btn-hapus{
        font-size: 1.2rem;
        background-color: #CB6040;
        color: white;
        padding: 0.5rem;
        border-radius: 2px;
    }
    .btn-hapus:hover{
        background-color: #FEFF9F;
        color: black;
    }
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
</style>

<!-- <td>" . $row["id_kontak"] . "</td> -->

<!-- baris ke 52 Bagian Dinamis
href='index.php?page=hapusreports&idkontak=" . $row1['id_kontak'] . "':
Membuat tautan menuju halaman index.php.
Parameter URL:
page=hapusreports: Menunjukkan bahwa halaman "hapusreports" akan diproses.
idkontak=: Menambahkan ID kontak yang spesifik.
. $row1['id_kontak'] .:
Data dinamis yang diambil dari kolom id_kontak di hasil query. Nilai ini akan ditambahkan ke parameter idkontak dalam URL. -->