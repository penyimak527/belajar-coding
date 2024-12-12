<?php
// Koneksi ke database
$koneksi = mysqli_connect("localhost", "root", "", "cat");

// Ambil data produk berdasarkan ID
$id_produk = intval($_GET['id_produk']); // Validasi dan casting ID menjadi integer
$ambil = $koneksi->query("SELECT * FROM list_content WHERE id_produk = '$id_produk'");

// Periksa apakah data ada
if ($ambil->num_rows > 0) {
    $datapecah = $ambil->fetch_assoc();
    $fotoproduk = $datapecah['img'];

    // Cek apakah file gambar ada di server
    $filepath = $_SERVER['DOCUMENT_ROOT'] . "/landingpage/asets/img/menu-kucing/" . $fotoproduk;
    
    if (file_exists($filepath)) {
        // Hapus file gambar
        if (unlink($filepath)) {
            echo "File gambar berhasil dihapus.<br>";
        } else {
            echo "Gagal menghapus file gambar.<br>";
        }
    } else {
        echo "File gambar tidak ditemukan.<br>";
    }

    // Hapus data dari database
    if ($koneksi->query("DELETE FROM list_content WHERE id_produk = '$id_produk'")) {
        echo "<script>alert('Produk telah dihapus');</script>";
    } else {
        echo "Error: " . $koneksi->error;
    }
} else {
    echo "Produk tidak ditemukan.<br>";
}

// Redirect ke halaman products
echo "<script>location='index.php?page=products'</script>";
?>
