<?php 
include "landingpage/includes/koneksi.php";

$koneksi = new mysqli("localhost","root","","cat");
// Debugging koneksi ke database
if (!$koneksi) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}
// Memastikan pengguna sudah login, jika belum maka akan diarahkan ke login.php
if (!isset($_SESSION ["loggedin"])) {
    echo "<script>alert('Silahkan login terlebih dahulu');</script>";
    echo "<script>location='landingpage/daftar/login.php';</script>";
    exit();
}


// echo "<pre>";
// print_r($_SESSION['keranjang']);
// echo "</pre>";               

// Jika keranjang kosong
if(empty($_SESSION['keranjang'])){
    echo "<script>alert('Keranjang kosong');</script>";
    echo "<script>location='index.php?page=menu';</script>";
    exit;
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Keranjang</title>
</head>
<body>

<style>
table {
    width: 100%;
}
th, td {
    border: 1px solid black;
    padding: 15px;
    text-align: left;
}
td {
    padding: 20px;
}
h1, p {
    margin: 5px;
}
body {
    min-height: 3666px;
}

/* tambah produk start */
.btn , .btn-lanjut{

    background: #A66E38;
    font-size: 20px;
    color: white;
    padding: 3px;
    border-radius: 2px;
    text-decoration: none;
}
.btn-lanjut{
/*    fungsi belum diketahui tapi berhasil*/
    display: inline-block;      
    margin-top: 10px;
    padding: 6px;
    border-radius: 2px;
    background: #DE8F5F;
}
.btn-lanjut:hover{
    background: #FD8B51;
}
.btn:hover {
    background: #FD8B51;
    color: whitesmoke;
}
.lanjut {
    width: 110px;
}
/* tambah produk end */
</style>

<div class="kontent">
    <div class="isi">
        <h1>Keranjang Belanja</h1>

        <table class="tabel">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Produk</th>
                    <th>Harga</th>
                    <th>Jumlah</th>
                    <th>Subharga</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $angka = 1;?>
                <?php foreach($_SESSION["keranjang"] as $id_produk => $jumlah): ?>
                    <?php 
                    // Pastikan koneksi ke database ada
                    $ambil = $koneksi->query("SELECT * FROM list_content WHERE id_produk= '$id_produk'");
                    if (!$ambil || $ambil->num_rows == 0) {
                        unset($_SESSION['keranjang'][$id_produk]);
                        continue;
                    }

                    $pecah = $ambil->fetch_assoc();
                    $subharga = $pecah["harga"] * $jumlah;
                    ?>
                    <tr>
                        <td><?php echo $angka;?></td>
                        <td><?php echo $pecah['judul_produk'];?></td>
                        <td><?php echo number_format($pecah['harga']); ?></td>
                        <td><?php echo $jumlah;?></td>
                        <td><?php echo number_format($subharga);?></td>
                        <td><a href="index.php?page=keranjanghapus&id_produk=<?php echo $id_produk;?>" class="btn">Hapus</a></td>
                    </tr>
                    <?php $angka++; ?>
                <?php endforeach; ?>
            </tbody>
        </table>
        <a href="index.php?page=menu" class="btn-lanjut">Lanjut belanja</a>
        <a href="index.php?page=checkout" class="btn-lanjut">Checkout</a>
    </div>
</div>


</body>
</html>

<!-- var_dump($_SESSION); -->
