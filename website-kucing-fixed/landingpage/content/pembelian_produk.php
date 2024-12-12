<?php

// Koneksi ke database
$koneksi = new mysqli("localhost", "root", "", "cat");

// // Memastikan pengguna sudah login
// session_start();
if (!isset($_SESSION['loggedin'])) {
    echo "<script>alert('Silahkan login terlebih dahulu');</script>";
    echo "<script>location='./daftar/login.php';</script>";
    exit();
}

// Ambil data pengguna dari session
$id_user = $_SESSION['id_user'];  // Pastikan ini ada dalam session setelah login
$telepon = $_POST['telepon'];
$alamat = $_POST['alamat'];  // Diambil dari form checkout
$tanggal_pembelian = date("Y-m-d H:i:s");

// Looping untuk setiap produk dalam keranjang
$total_harga = 0;
foreach ($_SESSION['keranjang'] as $id_produk => $jumlah) {
    // Ambil data produk dari database
    $result_produk = $koneksi->query("SELECT harga FROM list_content WHERE id_produk = '$id_produk'");
    if ($result_produk->num_rows > 0) {
        $produk = $result_produk->fetch_assoc();
        $harga_satuan = $produk['harga'];
        $totalharga = $jumlah * $harga_satuan;  // Total harga untuk produk ini
        
        // Menyimpan data ke tabel pembelian_produk
        $sql = "INSERT INTO pembelian_produk (id_user, id_produk, telepon, jumlah, total_harga, alamat, tanggal_pembelian) 
                VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt = $koneksi->prepare($sql);
        $stmt->bind_param("iisidss", $id_user, $id_produk, $telepon, $jumlah, $totalharga, $alamat, $tanggal_pembelian);
        $stmt->execute();

        // Hitung total belanja
        $total_harga += $totalharga;
    }
}

// Konfirmasi pembelian berhasil
echo "<script>alert('Pembelian berhasil!');</script>";
echo "<script>location='index.php?page=selesai';</script>";

// Bersihkan keranjang setelah checkout
unset($_SESSION['keranjang']);

// Tutup koneksi
$koneksi->close();
?>
